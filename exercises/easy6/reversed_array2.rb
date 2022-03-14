# reversed_array2.rb
# method that takes an array
# returns a new array with the elements reversed (not mutated)
# do not use Array#reverse or Array#reverse! or method made in
# reversed_array1.rb

def reverse(array)
  new_array = []
  array.size.times do |i|
    new_array << array[array.size - i - 1]
  end
  new_array
end

reverse([1,2,3,4]) == [4,3,2,1]          # => true
reverse(%w(a b e d c)) == %w(c d e b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true

# Solution using each method:
def reverse(array)
  result_array = []
  array.reverse_each { |element| result_array << element }
  result_array
end
