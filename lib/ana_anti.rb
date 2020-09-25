require('pry')

def anagramFunc(word1, word2)
  # word 1
  puts "VALUE:" << word1
  puts "LENGTH:" << String(word1.length)
  charCheck1 = word1.downcase.chars.sort.join
  puts charCheck1
  # word 2
  puts "VALUE:" << word2
  puts "LENGTH:" << String(word2.length)
  charCheck2 = word2.downcase.chars.sort.join
  puts charCheck2
  # check if equal
  # antigramTest = (charCheck1.include?(charCheck2) ? (return "These words have no letter matches and are antigrams.") : (return "It got nothing"))
  # anagramTest = (charCheck1 == charCheck2 ? (return "These words are anagrams!" ) : antigramTest)
  ((charCheck1.match(/[aeiou]/)) && (charCheck2.match(/[aeiou]/))) ? (charCheck1 == charCheck2 ? (return "These words are anagrams!" ) : (charCheck1.match(charCheck2) ? (return "It got nothing") : (return "These words have no letter matches and are antigrams."))) : (return "You need to input actual words!")
end



def gramFunc(sentence)
  puts "VALUE:" << sentence
  sentArray = sentence.downcase.split(" ")
  charArray = []
  sentArray.each { |word| charArray.push(word.chars.sort.join + ",")}
  charArray.each { |char| (char.length).match(charArray)}

  
  return
end