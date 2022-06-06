# fix_the_bug.rb
# find and fix the bug, then explain why the buggy program prined the wrong results

def my_method(array)
  if array.empty?
    []
  elsif #<--- no condition specified, add (array.size > 1) to fix this
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])

# printed result:
# []
# nil
# nil
# nil

# Expected results:
# []
# [21]
# [9, 16]
# [25, 36, 49]
