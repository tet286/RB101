# sequence_count.rb
# method that takes 2 integers: 1 count, 1 sequence
# return 1 array that contains the same number of elements as the count argument
# while the values of each element will be multiples of the staring number
# assume that the count input will >= 0, if count = 0, return empty list

def sequence(count, sequence)
  (1..count).map{|num| num * sequence}
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []

# Other solutions:
def sequence(count, sequence)
  result = []
  count.times do |i|
    result << sequence * (i+1)
  end
  p result
end
