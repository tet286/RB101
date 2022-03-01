# letter_counter1.rb
# method that takes a string with one or more space separated words
# returns a hash that shows the number of words of different sizes
# words consist of any string of characters that do not include a space

def word_sizes(string)
  arr = string.split.map{|word| word.length}
  key_arr = arr.uniq
  value_arr = key_arr.map{|key| arr.count(key)}
  string_count = {}
  key_arr.size.times do |i|
    string_count = string_count.merge({key_arr[i-1] => value_arr[i-1]})
  end
  string_count
end

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

# Solution:
def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    counts[word.size] += 1
  end
  counts
end