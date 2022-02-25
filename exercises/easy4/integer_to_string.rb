# integer_to_string.rb
# method takes a number and print out the string representation of that number
# cannot used String#to_s, String(), or Kernel#format

def integer_to_string(number)
  p string = number.digits.reverse.join
end

integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'

# non-cheating solution:

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end