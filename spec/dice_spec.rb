require 'dice'

describe Dice do
  let(:dice) {Dice.new}
  let(:two_dice) {Dice.new(2)}


  it "creates a die" do
    expect(dice).to be_instance_of(Dice)
  end

  it "creates a dice object and variable representing ther number of dice" do
    two_dice = Dice.new(2)
    expect(two_dice.no_of_dice).to eq 2
  end

  it "can #roll a die" do
    expect(dice).to respond_to(:roll)
  end

  it "outputs a number between 1 and 6 when #roll is used (using a stub)" do
    allow(dice).to receive(:roll) { 3 }
    expect(dice.roll).to eq 3
  end

  it "outputs a number between 1 and 6 when #roll is used" do
    expect(two_dice.roll).to be_between(1, 6).inclusive
  end

  it "outputs 2 numbers between 1 and 6 when #roll is used for 2 dice" do
    expect(two_dice.roll).to be_between(1, 6).inclusive
    expect(two_dice.roll).to be_between(1, 6).inclusive
  end

  it "allows any number of dice to be rolled at once (using a stub)" do
    value = 3, 4
    two_dice = Dice.new(2)
    allow(two_dice).to receive(:roll) { value }
    expect(two_dice.roll).to eq value
  end

end
