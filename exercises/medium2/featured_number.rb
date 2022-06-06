# featured_number.rb
# method that takes a single integer as an argument and return the next featured number
# that is > input number
# return error message if there is no next featured number
# featured number: odd number that is a multiple of 7 and whose digits occur exactly once

def uniq_digit?(number)
  num_digit = number.digits
  return true if num_digit.uniq.size == num_digit.size
end

def featured(number)
  mul_num = (number / 7) + 1
  loop do
    featured_num = mul_num * 7
    return featured_num if featured_num.odd? && uniq_digit?(featured_num)
    mul_num += 1
    break if number >= 9_876_543_210
  end
  'There is no possible number that fulfills those requirements.'
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

# LS Solution:
def featured(number)
  number += 1
  number += 1 until number.odd? && number % 7 == 0

  loop do
    number_chars = number.to_s.split('')
    return number if number_chars.uniq == number_chars
    number += 14
    break if number >= 9_876_543_210
  end

  'There is no possible number that fulfills those requirements.'
end

# Other Solution:
def featured(num)
  loop do
    num += 1
    next unless num.odd? && num % 7 == 0
    return num unless num.digits != num.digits.uniq
    break if num >= 9_876_543_210
  end

  "There is no possible number that fulfills those requirements."
end
