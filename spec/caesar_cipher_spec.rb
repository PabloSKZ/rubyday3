require_relative '../lib/caesar_cipher'

describe "the caesar_cipher method" do
    it "should return a string where each char is shifted by the integer in input" do
        expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
    end
    it "should return an error when the first input is not a string" do
        expect(caesar_cipher(5, 5)).to eq("Type Error")
    end
    it "should return an error when the second input is not an integer" do
        expect(caesar_cipher("What a string!", "What a string!")).to eq("Type Error")
    end
    it "should respect the case" do
        expect(caesar_cipher("W", 1)).to eq("X")
        expect(caesar_cipher("w", 1)).to eq("x")
    end
    it "should loop correctly" do
        expect(caesar_cipher("Z", 1)).to eq("A")
        expect(caesar_cipher("z", 1)).to eq("a")
    end
end

#65-90-97-122