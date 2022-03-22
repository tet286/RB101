# double_doubles.rb
# method that takes 1 number
# return 2 times the number (double number) 
# unless the input is already a double number

def twice(num)
  num_array = num.digits
  digit = num_array.size
  return num if digit.even? && num_array[0, digit / 2] == num_array[digit / 2, digit / 2]
  return num * 2  
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10

# LS Solution:
def twice(number)
  string_number = number.to_s
  center = string_number.size / 2
  left_side = center.zero? ? '' : string_number[0..center - 1]
  right_side = string_number[center..-1]

  return number if left_side == right_side
  return number * 2
end
