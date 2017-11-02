class Bottles
  def song
    verses(99, 0)
  end

  def verses(upper, lower)
    upper.downto(lower).map { |i| verse(i) }.join("\n")
  end

  def verse(number)
    bottle_number = BottleNumber.for(number)

    "#{bottle_number} of beer on the wall, ".capitalize +
    "#{bottle_number} of beer.\n" +
    "#{bottle_number.action}, " +
    "#{bottle_number.successor} of beer on the wall.\n"
  end
end


class BottleNumber
  def self.for(number)
    registry.find {|candidate| candidate.handles?(number)}.new(number)

    # @@registry.find {|candidate| candidate.handles?(number)}.new(number)

    # [BottleNumber1, BottleNumber0, BottleNumber].find {|candidate| candidate.handles?(number)}.new(number)

    # Hash.new(BottleNumber).merge(0 => BottleNumber0, 1 => BottleNumber1)[number].new(number)

    # begin
    #   const_get("BottleNumber#{number}")
    # rescue NameError
    #   BottleNumber
    # end.new(number)

    # case number
    # when 0
    #   BottleNumber0
    # when 1
    #   BottleNumber1
    # else
    #   BottleNumber
    # end.new(number)
  end

  def self.handles?(number)
    true
  end

  def self.inherited(candidate)
    register(candidate)
  end

  def self.registry
    @@registry ||= [BottleNumber]
  end

  def self.register(candidate)
    registry.unshift(candidate)
  end

  attr_reader :number
  def initialize(number)
    @number = number
  end

  def to_s
    "#{quantity} #{container}"
  end

  def quantity
    number.to_s
  end

  def container
    "bottles"
  end

  def action
    "Take #{pronoun} down and pass it around"
  end

  def pronoun
    "one"
  end

  def successor
    BottleNumber.for(number - 1)
  end
end

class BottleNumber0 < BottleNumber
  register(self)

  def self.handles?(number)
    number == 0
  end

  def quantity
    "no more"
  end

  def action
    "Go to the store and buy some more"
  end

  def successor
    BottleNumber.for(99)
  end
end

class BottleNumber1 < BottleNumber
  register(self)

  def self.handles?(number)
    number == 1
  end

  def container
    "bottle"
  end

  def pronoun
    "it"
  end
end