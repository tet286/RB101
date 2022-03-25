# rotation3.rb
# method that takes an integer as argument and return the maxmum rotation
# use method from rotation2.rb 

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(num, n)
  all_digits = num.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

def max_rotation(num)
  count = num.digits.size
  while count > 1
    num = rotate_rightmost_digits(num, count)
    count -= 1
  end
  num
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845

# Further exploration: when there is multiple 0s => preserve 0s
def max_rotation(number)
  number = number.to_s
  number.size.downto(1) do |idx|
    number = rotate_rightmost_digits(number.to_i, idx).to_s
  end
  number.to_i
end

def rotate_rightmost_digits(int, n)
  string = int.to_s
  char_to_rotate = string.to_s.slice!(-n)
  string.concat(char_to_rotate)
  string.to_i
end
