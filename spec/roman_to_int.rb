require "rspec"
require "./lib/roman_to_int"

RSpec.describe "roman_to_int" do
  it "will translate roman numerals to integers" do
    s = "III"
    expect(roman_to_int(s)).to eq(3)
    
    t = "LVIII"
    expect(roman_to_int(t)).to eq(58)
    
    u = "MCMXCIV"
    expect(roman_to_int(u)).to eq(1994)
    
  end
end