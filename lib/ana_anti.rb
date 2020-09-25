require('pry')

def anagramFunc(word1, word2)

# word 1
puts "VALUE:" << word1
puts "LENGTH:" << String(word1.length)
wordArray1 = []
wordArray1.push(word1.chars.sort.join)
puts wordArray1

# word 2
puts "VALUE:" << word2
puts "LENGTH:" << String(word2.length)
wordArray2 = []
wordArray2.push(word2.chars.sort.join)
puts wordArray2

# check if equal
wordArray1 == wordArray2 ? (return "These words are anagrams!" ) : (return "These words are not anagrams!")


  # puts("These words are anagrams!")
  # return "These words are anagrams!"
end