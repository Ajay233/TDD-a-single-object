class Dice

  def roll(num)
    result = num.times.map { rand(1..6) }
    result
  end

end
