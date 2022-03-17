# the_end.rb
# method that takes 1 string
# returns the next to last word
# words are any sequence of non-blank characters
# assume that the input string always contain 2 or more words

def penultimate(string)
  result = string.split[string.split.size - 2]
end

penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'


#### Further Exploration: retrieve middle word of a phrase
# edge cases: even number of words => return mid 2 words

def penultimate(string)
  string_arr = string.split
  mid_index = string_arr.size / 2
  if string_arr.size.even?
  result = string_arr[mid_index- 1] + ' ' + string_arr[mid_index] 
  else
  result = string_arr[mid_index]
  end
end


p penultimate('middle word')
p penultimate('Launch School is great!')
p penultimate('Launch School is pretty great!')

# Other Solution:
def middle_word(str)
  return '' if str.empty?
  words_array = str.split
  middle_index = (words_array.length.to_f / 2).ceil - 1
  num_words = words_array.length.even? ? 2 : 1
  words_array[middle_index, num_words].join(' ')
end
