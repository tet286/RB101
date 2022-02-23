# number_validation.rb
# verify that only valid numbers - integer or float - are entered
# float method

# use the [integer?] method we created
def number?(input)
  integer?(input) || float?(input)
end

# 1. making [float?] method, simple way
def float?(input)
  input.to_f.to_s == input
end
# not ideal since to_f converts n. to 1.0 which doesn't match original input

# 2. use regex
def float?(input)
  /\d/.match(input) && /^-?\d*\.?\d*$/.match(input)
end

# 3. use built-in [Kernel#Float]
def float?(input)
  Float(input) rescue false
end

# floating point precision problem
