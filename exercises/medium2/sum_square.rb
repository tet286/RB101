# sum_square.rb
# method that computes the difference between the square of the sum of the first n
# positive intergers and the sum of the squares of the first n positive integers

# def sum_square_difference(n)
#   sum = 0
#   square = 0
#   1.upto(n) do |i|
#     sum += i
#     square += (i**2) 
#   end
#   return diff = sum**2 - square 
# end

def sum_square_difference(n)
  nums = (1..n).to_a
  (nums.sum)**2 - nums.map{|num| num**2}.sum
end


p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150


# LS Solution:
def sum_square_difference(n)
  sum = 0
  sum_of_squares = 0

  1.upto(n) do |value|
    sum += value
    sum_of_squares += value**2
  end

  sum**2 - sum_of_squares
end
