class Card

attr_reader :rank, :suit


  def initialize x, suit
    @rank = x
    @value = x
    @suit = suit
  end

  def value
    if @value == :J || @value == :Q || @value == :K
      @value = 10

    elsif @value == :A
      @value = 11
    else
      @value
    end
  end



end
