require 'dice'

describe Dice do

  it "creates a die" do
    dice = Dice.new
    expect(dice).to be_instance_of(Dice)
  end

end
