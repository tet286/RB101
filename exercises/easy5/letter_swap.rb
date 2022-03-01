# letter_swap.rb
# method that takes 1 argument, a string of words separated by spaces
# return a string in which the first and the last letters of every word are swapped
# assume that input string contains nothing but words and spaces

def swap(string)
  array_strings = string.split(' ')
  swap_array = array_strings.map do |string|
    array_char = string.chars
    first = array_char.shift
    last = array_char.pop
    array_char.push(first)
    array_char.unshift(last).join
  end
  swap_array.join(' ')
end

swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

# Solution:
def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(words)
  result = words.split.map do |word|
    swap_first_last_characters(word)
  end
  result.join(' ')
end
