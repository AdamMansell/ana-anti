require('pry')

def anagramFunc(word1, word2)

# word 1
puts "VALUE:" << word1
puts "LENGTH:" << String(word1.length)
wordArray1 = []
wordArray1.push(word1.downcase.chars.sort.join)
puts wordArray1

# word 2
puts "VALUE:" << word2
puts "LENGTH:" << String(word2.length)
wordArray2 = []
wordArray2.push(word2.downcase.chars.sort.join)
puts wordArray2

# check if equal
# antigramTest = (wordArray1.match(wordArray2) == false ? (return "These words have no letter matches and are antigrams.") : (return "It got nothing"))
# anagramTest = (wordArray1 == wordArray2 ? (return "These words are anagrams!" ) : antigramTest)
(wordArray1.scan(/aeiou/) && wordArray2.scan(/aeiou/)) ? (wordArray1 == wordArray2 ? (return "These words are anagrams!" ) : (wordArray1.match(wordArray2) == false ? (return "These words have no letter matches and are antigrams.") : (return "It got nothing"))) : (return "You need to input actual words!")



  # puts("These words are anagrams!")
  # return "These words are anagrams!"
end