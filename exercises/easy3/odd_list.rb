# odd_list.rb
# method takes one argument, array
# returns another array that contains every other elements of initial array
# the values returned should be (odd) 1st,3rd,5th, and so on...

def oddities(array)
  new_array = []
  array.each_index{|index| new_array << array[index] if index.even?}
  new_array
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []

# Solution:
def oddities(array)
  odd_elements = []
  index = 0
  while index < array.size
    odd_elements << array[index]
    index += 2
  end
  odd_elements
end