# halvsies.rb
# a method that takes 1 array
# return 2 arrays (as pair of nested array), contain the first half and second half
# of the original array
# if the input array has odd numbers of elements, the middle element should be placed
# in the first half array

def halvsies(arr)
  half_index = (arr.size.to_f / 2).round
  arr1 = []

  half_index.times do
    arr1 << arr.shift
  end
  
  [arr1, arr]
end

# Examples:
halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]
