class Phrases
  DATA =
  [ ["the horse and the hound and the horn", "that belonged to"],
    ["the farmer sowing his corn", "that kept"],
    ["the rooster that crowed in the morn", "that woke"],
    ["the priest all shaven and shorn", "that married"],
    ["the man all tattered and torn", "that kissed"],
    ["the maiden all forlorn", "that milked"],
    ["the cow with the crumpled horn", "that tossed"],
    ["the dog", "that worried"],
    ["the cat", "that killed"],
    ["the rat", "that ate"],
    ["the malt", "that lay in"],
    ["the house", "that Jack built"]]

    attr_reader :data

    def initialize(orderer: OriginalOrderer.new)
      @data = orderer.order(DATA)
    end

    def phrase(num)
      data.last(num).join(" ")
    end

    def size
      data.size
    end
end


class House
  attr_reader :phrases, :prefix

  def initialize(phrases: Phrases.new, prefixer: MundanePrefixer.new)
    @phrases = phrases
    @prefix = prefixer.prefix
  end

  def recite
    1.upto(phrases.size).collect {|i| line(i)}.join("\n")
  end

  def phrase(num)
    phrases.phrase(num)
  end

  def line(num)
    "#{prefix} #{phrase(num)}.\n"
  end
end


class RandomOrderer
  def order(data)
    data.shuffle
  end
end

class OriginalOrderer
  def order(data)
    data
  end
end

class RandomButLastOrderer
  def order(data)
    data[0..-2].shuffle << data.last
  end
end

class MixedColumnOrderer
  def order(data)
    data.transpose.map {|column| column.shuffle}.transpose
  end
end


class PiratePrefixer
  def prefix
    "Thar be"
  end
end

class MundanePrefixer
  def prefix
    "This is"
  end
end


# puts House.new(orderer: RandomOrderer.new).line(12)
# puts
# puts House.new(orderer: RandomOrderer.new, prefixer: PiratePrefixer.new).line(12)
# puts
# puts House.new(orderer: RandomButLastOrderer.new).line(12)
# puts
