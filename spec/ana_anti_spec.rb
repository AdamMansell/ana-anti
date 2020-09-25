require ('rspec')
require ('ana_anti')

describe("#anagramFunc") do
  it ("it reads words and checks for anagrams") do
    expect(annagramFunc("dog god")).to(eq("These words are anagrmas!"))
  end
end
