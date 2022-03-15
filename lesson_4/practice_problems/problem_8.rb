# problem_8.rb
# What would happen if we modify an array while we are iterating over it?
# Compare the current array instead of the original one

# What would be the output of this code?
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# Skip 2 and 4
# => [3,4]


# What would be the output of this code?
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# Skip 3 and 4
# => [1,2]
