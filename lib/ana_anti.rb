require('pry')

def anagramFunc(word1, word2)

puts "VALUE:" << word1
puts "LENGTH:" << String(word1.length)

wordArray1 = []
wordArray2 = []

for i in 0..word1.length - 1
  puts "CHAR FORWARD:" << word1[i]
  wordArray1.push(word1[i])
end

puts "VALUE:" << word2
puts "LENGTH:" << String(word2.length)

for i in 0..word2.length - 1
  puts "CHAR FORWARD:" << word2[i]
  wordArray2.push(word2[i])
end

puts wordArray1
puts wordArray2



  puts("These words are anagrams!")
  return "These words are anagrams!"
end