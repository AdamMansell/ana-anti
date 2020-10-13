require('pry')
class AnagramChecker
  attr_reader :word1, :word2, :phrase

  def initialize(word1 = nil, word2 = nil, phrase = nil)
    @word1 = word1
    @word2 = word2
    @phrase = phrase
  end

  def is_anagram
    chars_1 = word1.downcase.chars.sort.join
    chars_2 = word2.downcase.chars.sort.join
    if valid_word?(word1) && valid_word?(word2) && chars_1 == chars_2
      "These words (#{word1} and #{word2}) are anagrams!"
    end
  end

  def is_antigram
    return "You need to input actual words!" unless valid_word?(word1) && valid_word?(word2)
    if (word1.downcase.chars & word2.downcase.chars).empty?
      "These words (#{word1} and #{word2}) have no letter matches and are antigrams."
    end
  end

  def is_anagram_or_antigram
    @words = phrase.split(' ')
    @valid_words = []
    @results = []
    @words.each do |word|
      if valid_word?(word)
        @results << "#{word} is a valid word!"
        @valid_words << word
      else
        @results << "#{word} is not a valid word!"
      end
      word_pairs = @valid_words.combination(2).to_a
      word_pairs.each do |word_pair|
        anagram_checker = AnagramChecker.new(word_pair[0], word_pair[1])
        anagram_result = anagram_checker.is_anagram
        antigram_result = anagram_checker.is_antigram
        if anagram_result.nil? && antigram_result.nil?
          @results << "These words (#{word_pair[0]} and #{word_pair[1]}) are neither anagrams nor antigrams."
        end        
        @results << anagram_result
        @results << antigram_result
      end      
    end
    @results.join("\n")
  end

  def valid_word?(word)
    word.match(/[aeiou]/i)
  end
end