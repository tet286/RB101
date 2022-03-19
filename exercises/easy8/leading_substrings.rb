# leading_substrings.rb
# method that takes 1 string
# returns a list of all substring that start at the beginning of the org string
# return value should be arranged in order from shortest to longest string

def leading_substrings(string)
  substring = []
  count = 1
  string.size.times do
    substring << string.slice(0, count)
    count += 1
  end
    
  substring
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# LS Solution:
def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end
