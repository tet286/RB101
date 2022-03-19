# all_substrings.rb
# method that takes 1 string
# return 1 list of all substrings
# returned list should be ordered by where in the string the substring begins
# should use the leading_substring method 

def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

def substrings(string)
  substrings = []
  string.size.times do |i|
    substrings << leading_substrings(string[i..string.size])
  end
  substrings.flatten
end

  
substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

# Short Solution:
def substrings(str)
  (0...str.size).map { |i| leading_substrings(str[i..-1]) }.flatten
end
