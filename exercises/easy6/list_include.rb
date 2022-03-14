# list_include.rb
# method that takes 1 array and 1 search value
# returns true if search value is in the array
# do not use Array#include? method

def include?(array,value)
  false
  true if array.count(value) > 0
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
