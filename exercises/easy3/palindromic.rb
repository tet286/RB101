# palindromic.rb
# method that takes one argument, an integer
# return <true> if the integer is palindromic, false otherwise

def palindromic_number?(forward)
  p backward = forward.to_s.reverse
  forward.to_s == backward 
end


puts palindromic_number?(034543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true