require('./lib/anagram_checker')

puts "please enter 1 word to test"
word1 = gets.chomp.to_s
puts "please enter 1 more word to test"
word2 = gets.chomp.to_s
puts "please enter a sentence"
phrase = gets.chomp.to_s
anagram_checker = AnagramChecker.new(word1, word2)
puts anagram_checker.is_anagram
anagram_checker = AnagramChecker.new(word1, word2)
puts anagram_checker.is_antigram
anagram_checker = AnagramChecker.new(nil, nil, phrase)
puts anagram_checker.is_anagram_or_antigram