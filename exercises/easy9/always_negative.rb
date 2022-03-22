# always_negative.rb
# method that takes 1 number
# return the negative of the number if its positive.
# if the number is 0 or negative, return org num

def negative(num)
  return num * -1 if num > 0
  return num
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby

# LS Solution:
def negative(number)
  number > 0 ? -number : number
end

# OR:
def negative(number)
  -number.abs
end
