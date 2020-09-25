require ('rspec')
require ('ana_anti')

describe("#anagramFunc") do
  it ("it reads words and checks for anagrams") do
    expect(anagramFunc("dog", "god")).to(eq("These words are anagrams!"))
  end
end
