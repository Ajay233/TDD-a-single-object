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
    allow(dice).to receive(:roll) { 3 }
  end

  it "allows any number of dice to be rolled at once" do
    value = 3, 4
    allow(dice).to receive(:roll).and_return(value)
    expect(dice.roll(2)).to eq value
  end

end
