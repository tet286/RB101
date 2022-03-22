# uppercase_check.rb
# method that takes 1 string
# return true if all the alphabetic characters inside are uppercase
# false otherwise
# characters that are not alphabetic should be ignored

def uppercase?(string)
  /[a-z]/ === string ? false : true
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true

# Other Solution:
def uppercase?(string)
  string == string.upcase
end

#OR
def uppercase?(str)
  !(str =~ /[a-z]/)
end
