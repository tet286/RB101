# double_char2.rb
# method that takes 1 string
# return 1 new string in which every consonant charater is doubled.
# consonant != vowels, digits, punctuation, and white space

def double_consonants(string)
  string.chars.map {|char| char.downcase =~ /[a-z&&[^aeiou]]/ ? char * 2 : char}.join 
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
