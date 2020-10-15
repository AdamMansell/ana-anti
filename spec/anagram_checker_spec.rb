require ('rspec')
require('anagram_checker')

describe("#is_anagram") do  
  it ("it reads words and checks for anagrams") do
    anagram_checker = AnagramChecker.new("dog", "god")
    expect(anagram_checker.is_anagram).to eq("These words (dog and god) are anagrams!")
  end

  it ("it reads anagrams that have different cases and checks to see that they're still discovered") do
    anagram_checker = AnagramChecker.new("CaFe", "fAcE")
    expect(anagram_checker.is_anagram).to eq("These words (CaFe and fAcE) are anagrams!")
  end

  it ("it reads words and checks for antigrams") do
    anagram_checker = AnagramChecker.new("hi", "bye")
    expect(anagram_checker.is_antigram).to eq("These words (hi and bye) have no letter matches and are antigrams.")
  end

  it ("it reads and checks to see if words are valid") do
    anagram_checker = AnagramChecker.new("zzz", "xxx")
    expect(anagram_checker.is_antigram).to eq("zzz is not a valid word")
  end

  it ("checks for valid words, anagram and/or anigram combinations in a given phrase of words") do
    anagram_checker = AnagramChecker.new(nil, nil, "CaFe bye zzz fAcE xxx hi")
    result = anagram_checker.is_anagram_or_antigram
    expect(result).to include("CaFe is a valid word!")
    expect(result).to include("hi is a valid word!")
    expect(result).to include("bye is a valid word!")
    expect(result).to include("fAcE is a valid word!")
    expect(result).to include("zzz is not a valid word!")
    expect(result).to include("xxx is not a valid word!")    
    expect(result).to include("These words (CaFe and fAcE) are anagrams!")
    expect(result).to include("These words (CaFe and hi) have no letter matches and are antigrams.")
    expect(result).to include("These words (bye and hi) have no letter matches and are antigrams.")
    expect(result).to include("These words (fAcE and hi) have no letter matches and are antigrams.")
    expect(result).to include("These words (bye and fAcE) are neither anagrams nor antigrams.")
    expect(result).to include("These words (CaFe and bye) are neither anagrams nor antigrams.")
  end
end
