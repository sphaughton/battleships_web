require 'ship'

describe Ship do
  let(:ship){Ship.new}

  it "can be hit" do
    ship.hit
    expect(ship.send(:hits)).to eq 1
  end

  it "should know if a ship is not sunk" do
    expect(ship).not_to be_sunk
  end

  it "should know if a ship is sunk when hit" do
    ship = Ship.new(1)
    ship.hit
    expect(ship).to be_sunk
  end

context "Submarine" do

  it "knows how big it is" do
    expect(ship.length).to eq 3
  end

  it "knows that a submarine has a length of 2" do
    submarine = Ship.submarine
    expect(submarine.length).to eq 2
  end

  it "knows that its size is 2" do
    submarine = Ship.submarine
    expect(submarine.size).to eq 2
  end

end

context "Aircraft carrier" do

  it "knows that an aircraft carrier has a length of 5" do
    expect(Ship.aircraft_carrier.length).to eq 5
  end

end

end