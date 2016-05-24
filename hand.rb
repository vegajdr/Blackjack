class Hand

attr_reader :value

  def initialize
    @value = 0
    @array = []
    @ranks = []
    @suits = []
  end

  def add *cards

    if @value >= 21
      @array = @array.map do |n|
        if n == 11
          n = 1
        else
          n
        end
      end
    end

    cards.each do |card|
      @array.push(card.value)
      @ranks.push(card.rank)
      @suits.push(card.suit)
      #binding.pry
    end

    @value = @array.reduce 0, :+

  end

  def busted?
    @value > 21
  end

  def blackjack?
    @value == 21
  end

  def to_s
    string = []
    master = @ranks.zip @suits
    master.each do |e|
      string.push(e.join)
    end
    return string.join(", ")
  end

end
