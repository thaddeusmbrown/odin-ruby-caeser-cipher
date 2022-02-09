require './lib/caesar_cipher.rb'

describe "#caesar_cipher" do
  it "correctly shifts a string of lowercase letters" do
    key = "what a string!"
    hash = "xibu b tusjoh!"
    expect(caesar_cipher(key, 1)).to eq(hash)
  end

  it "correctly shifts a string of uppercase letters" do
    key = "WHAT A STRING!"
    hash = "XIBU B TUSJOH!"
    expect(caesar_cipher(key, 1)).to eq(hash)
  end

  it "correctly shifts a string of mixed-case letters" do
    key = "What a string!"
    hash = "Xibu b tusjoh!"
    expect(caesar_cipher(key, 1)).to eq(hash)
  end

  it "correctly wraps from z to a" do
    key = "What a string!"
    hash = "Bmfy f xywnsl!"
    expect(caesar_cipher(key, 5)).to eq(hash)
  end
end