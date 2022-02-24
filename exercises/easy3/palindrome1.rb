# palindrome1.rb
# method that takes one argument, a string
# returns <true> if string is a palindrome
# a palindrome reads the same forward and backward

def palindrome?(forward)
  backward = forward.chars.reverse.join
  forward == backward 
end

puts palindrome?('tacocat') == true
puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true

# solution: #reverse can also be applied directly to string
#def palindrome?(string)
#  string == string.reverse
#end
