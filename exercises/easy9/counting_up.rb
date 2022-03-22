# counting_up.rb
# method that takes 1 integer
# return an array of all integers, in sequence, between 1 and the argument
# assume that the argument will always be a valid integer that is greater than 0

def sequence(num)
  (1..num).to_a
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]

# Further exploration: sequence return if argument < 0
def sequence(num)
  num > 0 ? (1..num).to_a : (num..-1).to_a
end
