# integer_validation.rb
# a method

# 1. simple
def integer?(input)
  input.to_i.to_s == input
end

# 2. use regex
def integer?(input)
  /^-?\d+$/.match(input)
end
# \d regular expression to test against all digits
# ^ means start of string
# + means "one or more" (of the precedding matcher)
# $ means end of string

# 3. use built-in conversion method [Kernel#Integer]
def integer?(input)
  Integer(input) rescue false
end
# using "code smell" [rescue] since this raises TypeError if input is not an integer