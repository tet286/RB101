# multiply_all_pairs.rb
# method that takes 2 arrays of numbers
# return 1 new array that contains the product of every pair of numbers that 
# can be formed between the elments of the 2 arrays
# results should be sorted by increasing value
# assume neither input arrays are empty

def multiply_all_pairs(arr1, arr2)
  result = []
  index = [0,0]
  arr1.size.times do
    arr2.size.times do
      result << arr1[index[0]] * arr2[index[1]]
      index[1] +=1
    end
    index[1] = 0
    index[0] += 1
  end
  result.sort
end

multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

# Shorter solution:
def multiply_all_pairs(array_1, array_2)
  array_1.product(array_2).map { |num1, num2| num1 * num2 }.sort
end
