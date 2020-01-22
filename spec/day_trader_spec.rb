require_relative '../lib/day_trader'

describe "the buy_day method" do
    it "should return the index of the smallest integer" do
        expect(buy_day([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq(1)
    end
end