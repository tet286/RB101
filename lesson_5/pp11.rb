# pp11.rb
# return a new array identical in structure to the org but containing only 
# the integers that are multiples of 3

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

p arr.map{|sub_arr| sub_arr.select{|num| num % 3 == 0}}

# LS Solution:
# select:
arr.map do |element|
  element.select do |num|
    num % 3 == 0
  end
end
# => [[], [3], [9], [15]]

# reject:
arr.map do |element|
  element.reject do |num|
    num % 3 != 0
  end
end
# => [[], [3], [9], [15]]
