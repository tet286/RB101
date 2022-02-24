# average.rb
# a method that takes one argument, an array containing integer
# return the average of all numbers in the array
# the array is never empty and the number is always positive
# result has to be an integer

def average(array)
  sum = 0
  array.each{|num|sum += num}
  average = sum / array.length
end


puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

# Solution
def average(numbers)
  sum = numbers.reduce { |sum, number| sum + number }
  sum / numbers.count
end