# reverse_2.rb
# method that takes one argument, a string containing one or more words
# returns the given string with words that contains 5 or more char reversed
# each string will consist of only letters and spaces
# spaces should be included only when more than one word is present.

def reverse_words(string)
  string_array = string.split(" ")
  reverse_array = []
  string_array.each do |elm|
     if elm.chars.count >= 5
      reverse_array << elm.reverse
     else
      reverse_array << elm
     end
  end
  reverse_array.join(' ')
end



puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS


# Solution
def reverse_words(string)
  words = []

  string.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end

  words.join(' ')
end