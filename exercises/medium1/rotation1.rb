# rotation1.rb
# method that rotates an array by moving the first element to the end of the arryay.
# the org array shouldnt be modified
# do not use Array#rotate or Array#rotate!

def rotate_array(arr)
  result = arr.dup
  result.push(result.shift)
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

p x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

# LS Solution:
def rotate_array(array)
  array[1..-1] + [array[0]]
end
