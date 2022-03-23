# pp10.rb
# given the following data structure without modifying the original array,
# use map method to rerturn a new array identical in structure to the org
# but where the value of each integer is incremented by 1

arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

result = arr.map do |hsh|
  new_hash = {}
  hsh.each do |key, value|
    new_hash[key] = value + 1
  end
  new_hash
end

p result

# Other Solution:
[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].each_with_object([]) do |hsh, arr|
  incremented_hash = {}
  hsh.each do |key, value|
    incremented_hash[key] = value + 1
  end
  arr << incremented_hash
end
