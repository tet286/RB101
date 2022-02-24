# sum.rb
# method that takes one argument, a positive integer
# returns the sum of its digits
# challenge: try writing this without any basic looping constructs
# while, until, loop, and each

def sum(number)
  number.digits.sum
end

# All tests below should print >> true
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

# Other Solution:
def sum(number)
  sum = 0
  str_digits = number.to_s.chars

  str_digits.each do |str_digit|
    sum += str_digit.to_i
  end

  sum
end

# or:
23.to_s        # => "23"
  .chars       # => ["2", "3"]
  .map(&:to_i) # => [2, 3]
  .reduce(:+)  # => 5