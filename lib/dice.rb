class Dice
  attr_accessor :no_of_dice

  def initialize(num = 1)
    @no_of_dice = num
  end

  def roll
    @no_of_dice.times { puts rand(1..6) }
  end

end
