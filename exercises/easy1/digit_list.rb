# digit_list.rb
# method that takes one argument, a positive number
# returns a list of the digits in the number

def digit_list(num)
  list = num.to_s.chars.map{|string| string.to_i}
end

puts digit_list(12345) == [1, 2, 3, 4, 5] # => true

# Above is called Idiomatic Ruby, below method is Brute Force
# this method chop off digit at the end one at a time, adding them to an array
# then return the array to compare.

def digit_list(number)
  digits = []
  loop do
    number, remainder = number.divmod(10)
    digits.unshift(remainder)
    break if number == 0
  end
  digits
end