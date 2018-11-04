class Dice
  attr_accessor :no_of_dice

  def initialize(num = 1)
    @no_of_dice = num
  end

  def roll
    result = @no_of_dice.times.map { rand(1..6) }
    result
  end

end
