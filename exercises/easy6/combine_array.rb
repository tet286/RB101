# combine_array.rb
# method that takes 2 arrays 
# return an array that contains all of the values from the 2 input arrays
# no duplicate of values in the returned array

def merge(arr1, arr2)
  (arr1 + arr2).uniq
end

merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# Solution using |
def merge(array_1, array_2)
  array_1 | array_2
end
