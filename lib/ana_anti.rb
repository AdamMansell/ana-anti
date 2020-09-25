require('pry')

def anagramFunc(word1, word2)

puts "VALUE:" << word1
puts "LENGTH:" << String(word1.length)

for i in 0..word1.length - 1
  puts "CHAR FORWARD:" << word1[i]
end



  puts("You will have #{quarter_count} quarter(s), #{dime_count} dime(s), #{nickel_count} nickel(s), and #{penny_count} pennies.")
  return quarter_count, dime_count, nickel_count, penny_count
end