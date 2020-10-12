require('pry')
class AnagramChecker
  attr_reader :word1, :word2

  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def is_anagram
    chars_1 = word1.downcase.chars.sort.join
    chars_2 = word2.downcase.chars.sort.join
    if valid_word?(word1) && valid_word?(word2) && chars_1 == chars_2
      "These words are anagrams!"
    end
  end

  def is_antigram
    if valid_word?(word1) && valid_word?(word2) && (word1.chars & word2.chars).empty?
      "These words have no letter matches and are antigrams."
    else
      "You need to input actual words!"
    end
  end

  def valid_word?(word)
    word.match(/[aeiou]/i)
  end
end