# running_total.rb
# method that takes an arrayof numbers
# returns an array with the same number of elments
# each elements has the running total from the original array

def running_total(array)
  total = 0
  array.map{|num| total += num}
end



running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []
