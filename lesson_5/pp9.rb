# pp9.rb
# given the data structure, return a new array of the same structure
# but with the sub arrays being ordered (alphabetically or numerically as appropriate)
# in decending order

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

p arr.map{|sub_arr| sub_arr.sort}
  
# LS Solution:
arr.map do |sub_arr|
  sub_arr.sort do |a, b|
    b <=> a
  end
end
# => [["c", "b", "a"], [3, 2, 1], ["green", "blue", "black"]]
