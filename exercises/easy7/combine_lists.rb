# combine_lists.rb
# method that takes 2 arrays, combine them
# return a new array that contains all elements from both alternatively
# assume input arrays are non-empty and they have the same number of elm

def interleave(arr1, arr2)
  new_arr = []
  arr1.each_with_index do |elm, index| 
    new_arr << elm 
    new_arr << arr2[index]
  end
  new_arr
end

interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# Solution << in one line
def interleave(array1, array2)
  result = []
  array1.each_with_index do |element, index|
    result << element << array2[index]
  end
  result
end

# Further Exploration: using zip
def interleave(array1, array2)
  new_array = array1.zip(array2).flatten
end
