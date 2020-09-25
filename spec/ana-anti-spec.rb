require ('rspec')
require ('coin_combo')

describe("#anagramFunc") do
  it ("it returns the number of quarters needed to create the inputed amount of change") do
    expect(packetCoin(75)).to(eq([3,0,0,0]))
  end
end
