# reversed_array1.rb
# method that takes an array
# return the same array object (mutated) with its element reversed
# do not use Array#reverse or Array#reverse!

def reverse!(array)
  array.size.times do |i|
    array.insert(i, array.pop)
  end

  array
end

# Examples:
list = [1,2,3,4]
result = reverse!(list)
p list.object_id
p result.object_id

