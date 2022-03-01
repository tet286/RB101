# letter_counter2.rb
# modify word_sizes method from letter_counter1.rb to exclude non-letters

def word_sizes(words_string)
  counts = Hash.new(0)
  p words_string = words_string.gsub(/[^A-Z,^a-z,^ ]/,'').split
  words_string.each do |word|
    counts[word.size] += 1
  end
  p counts
end

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}

# OR
def word_sizes(str)
  hsh = Hash.new(0)
  str.split.each do |word|
    hsh[word.scan(/[a-zA-Z]/).size] += 1
  end
  hsh
end