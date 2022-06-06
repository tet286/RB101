# getting_thing_done.rb
# what does the SystemStackError mean and why?
# every recursion needs a base case, or a condition under which it will stop
# the original method doesnt have one so it repeatedly calls itself with ever decreasing
# value for n

def move(n, from_array, to_array)
  # n.times{to_array << from_array.shift} <-- non-recursive method
  return if n == 0 #<-- condition to break at n == 0
  to_array << from_array.shift
  move(n - 1, from_array, to_array)
end

# Example

todo = ['study']#, 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)

p todo # should be: ['coffee with Tom']
p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']

# Further Exploration:
# when n is smaller than the size of the from_array, it will add "nil" to the to_array
