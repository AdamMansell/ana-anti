require('./lib/ana_anti')

puts "please enter 1 word to test"
word1 = gets.chomp.to_s
puts "please enter 1 more word to test"
word2 = gets.chomp.to_s
anagramFunc(word1, word2)