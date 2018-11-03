require 'dice'

describe Dice do
  let(:dice) {Dice.new}


  it "creates a die" do
    expect(dice).to be_instance_of(Dice)
  end

  it "can roll a die" do
    expect(dice).to respond_to(:roll)
  end

  it "outputs a number between 1 and 6 when dice rolled" do
    expect(dice.roll).to eq 3
  end

end
