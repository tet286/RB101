# sum_of_sum.rb
# methat that takes 1 array of numbers
# return the sum of the sums of each leading subsequence for that array
# assume the input array always contains at least one number

def sum_of_sums(arr)
  sums = 0
  sum = 0
  arr.each do |num|
    sum += num
    sums += sum
  end
  sums
end

sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

# LS Solution: using slice and reduce
def sum_of_sums(numbers)
  sum_total = 0
  1.upto(numbers.size) do |count|
    sum_total += numbers.slice(0, count).reduce(:+)
  end
  sum_total
end
