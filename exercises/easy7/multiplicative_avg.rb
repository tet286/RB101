# multiplicative_avg.rb
# method that takes 1 array of integers, multiplies all numbers together,
# divide the result by the number of the elements of the array
# print the result rounded to 3 decimal places
# Assume array is non-empty

def show_multiplicative_average(arr)
  product = 1.000
  arr.each{|num| product *= num}
  puts "The result is %.3f" % (product/(arr.size))
end


show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

# LS Solution:
def show_multiplicative_average(numbers)
  product = 1.to_f
  numbers.each { |number| product *= number }
  average = product / numbers.size
  puts "The result is #{format('%.3f', average)}"
end
