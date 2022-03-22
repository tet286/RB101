# pp1.rb
# sort the array by decending numeric values

arr = ['10', '11', '9', '7', '8']
arr.map{|string| string.to_i}.sort

# LS Solution:
arr.sort do |a,b|
  b.to_i <=> a.to_i
end
# => ["11", "10", "9", "8", "7"]
