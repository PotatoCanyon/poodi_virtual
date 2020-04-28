require_relative '../../test_helper'
require_relative '../lib/house'

class OriginalOrderTest < Minitest::Test
  def test_order
    input = ["a", "b", "c", "d", "e"]
    expected = input
    assert_equal expected, OriginalOrderer.new.order(input)
  end
end

class RandomOrdererTest < Minitest::Test
  def test_order
    Random.srand(1)
    input    = ["a", "b", "c", "d", "e"]
    expected = ["c", "b", "e", "a", "d"]
    assert_equal expected, RandomOrderer.new.order(input)
    Random.srand
  end
end

class RandomButLastOrdererTest < Minitest::Test
  def test_order
    Random.srand(1)
    input    = ["a", "b", "c", "d", "always last"]
    expected = ["d", "c", "a", "b", "always last"]
    assert_equal expected, RandomButLastOrderer.new.order(input)
    Random.srand
  end
end

class MixedColumnOrdererTest < Minitest::Test
  def test_order
    Random.srand(1)
    input    = [["a1", "a2"], ["b1", "b2"], ["c1", "c2"], ["d1", "d2"], ["e1", "e2"]]
    expected = [["c1", "a2"], ["b1", "c2"], ["e1", "e2"], ["a1", "d2"], ["d1", "b2"]]
    assert_equal expected, MixedColumnOrderer.new.order(input)
    Random.srand
  end
end


class PhrasesTest < Minitest::Test
  def test_1d_phrase
    input_data = ["phrase 1", "phrase 2", "phrase 3", "phrase 4"]
    expected   = "phrase 2 phrase 3 phrase 4"
    assert_equal expected, Phrases.new(input_data: input_data).phrase(3)
  end

  def test_2d_phrase
    input_data = [["phrase 1a", "1b"], ["phrase 2a", "2b"], ["phrase 3a", "3b"], ["phrase 4a", "4b"]]
    expected   = "phrase 2a 2b phrase 3a 3b phrase 4a 4b"
    assert_equal expected, Phrases.new(input_data: input_data).phrase(3)
  end

  def test_2d_phrase_with_nils
    input_data = [["phrase 1a", nil, "1c"], [nil, "2b", "2c"], ["phrase 3a", "3b", nil], ["phrase 4a", nil, nil]]
    expected   = "2b 2c phrase 3a 3b phrase 4a"
    assert_equal expected, Phrases.new(input_data: input_data).phrase(3)
  end

  def test_size
    assert_equal 10, Phrases.new(input_data: ["a"] * 10).size
  end
end


class CumulativeTaleTest < Minitest::Test
  attr_reader :tale
  def setup
    @data    = [["phrase 1a", "1b"], ["phrase 2a", "2b"], ["phrase 3a", "3b"], ["phrase 4a", "4b"]]
    @phrases = Phrases.new(input_data: @data)
  end

  def test_line
    expected = "This is phrase 2a 2b phrase 3a 3b phrase 4a 4b.\n"
    assert_equal expected, CumulativeTale.new(phrases: @phrases).line(3)
  end

  def test_recite
    expected =
      "This is phrase 4a 4b.\n" +
      "\n" +
      "This is phrase 3a 3b phrase 4a 4b.\n" +
      "\n" +
      "This is phrase 2a 2b phrase 3a 3b phrase 4a 4b.\n" +
      "\n" +
      "This is phrase 1a 1b phrase 2a 2b phrase 3a 3b phrase 4a 4b.\n"
    assert_equal expected, CumulativeTale.new(phrases: @phrases).recite
  end
end
