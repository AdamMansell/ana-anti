require ('rspec')
require('anagram_checker')

describe("#is_anagram") do  
  it ("it reads words and checks for anagrams") do
    anagram_checker = AnagramChecker.new("dog", "god")
    expect(anagram_checker.is_anagram).to eq("These words are anagrams!")
  end

  it ("it reads anagrams that have different cases and checks to see that they're still discovered") do
    anagram_checker = AnagramChecker.new("CaFe", "fAcE")
    expect(anagram_checker.is_anagram).to eq("These words are anagrams!")    
  end

  it ("it reads words and checks for antigrams") do
    anagram_checker = AnagramChecker.new("hi", "bye")
    expect(anagram_checker.is_antigram).to eq("These words have no letter matches and are antigrams.")
  end

  it ("it reads and checks to see if words are valid") do
    anagram_checker = AnagramChecker.new("zzz", "xxx")
    expect(anagram_checker.is_antigram).to eq("You need to input actual words!") 
  end
end
