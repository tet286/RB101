# multiply_list.rb
# method that takes 2 arrays of numbers
# return 1 new array that contains the product of each pair of numbers that have 
# the same index
# assume the 2 inout arrays have the same number of elements

def multiply_list(arr1, arr2)
  result = []
  arr1.each do |num|
    number = num * arr2[arr1.index(num)]
    result << number
  end
  result
end

multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

#### Further Exploration: using zip

def multiply_list(arr1, arr2)
  result = arr1.zip(arr2).map{|num_arr| num_arr.reduce(:*)}
end
