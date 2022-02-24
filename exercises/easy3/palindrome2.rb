# palindrome2.rb
# method that takes one argument, a string
# returns <true> if string is a palindrome
# case in-sensitive

def real_palindrome?(forward)
  backward = forward.downcase.delete('^a-z0-9').chars.reverse.join
  backward == forward.downcase.delete('^a-z0-9')
end


puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false


# SOLUTION!!!

def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  palindrome?(string)
end