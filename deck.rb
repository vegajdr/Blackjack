require "pry"

class Deck

attr_reader :drawn

  def initialize
    @cards = (1..52).to_a
    @drawn = []

  end

  def cards
    @cards
  end

  def draw
    @cards.shuffle!

    @drawn.push(@cards.pop)

    return @drawn.last
  end

end
