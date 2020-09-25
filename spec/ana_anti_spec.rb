require ('rspec')
require ('ana_anti')

describe("#anagramFunc") do
  it ("it reads words and checks for anagrams") do
    expect(anagramFunc("dog", "god")).to(eq("These words are anagrams!"))
  end
  it ("it reads words and checks for antigrams") do
    expect(anagramFunc("hi", "bye")).to(eq("These words have no letter matches and are antigrams."))
  end
  it ("it reads words and checks for antigrams") do
    expect(anagramFunc("zzz", "xxx")).to(eq("You need to input actual words!"))
  end
  it ("it reads anagrams that have different cases and checks to see that they're still discovered") do
    expect(anagramFunc("CaFe", "fAcE")).to(eq("You need to input actual words!"))
  end
end
