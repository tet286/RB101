# pp13.rb
# return a new array contianing the same sub-arrays as the org but ordered 
# logically by only taking into consideration the odd numbers they contain

arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

# expected return: [[1, 8, 3], [1, 5, 9], [6, 1, 7], [1, 6, 9]]
arr.sort_by do |sub_arr|
  sub_arr.select do |num|
    num.odd?
  end
end
# => [[1, 8, 3], [1, 5, 9], [6, 1, 7], [1, 6, 9]]
