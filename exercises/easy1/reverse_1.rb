# reverse_1.rb
# method that takes one argument, a string
# returns a new string with the words in reverse order

def reverse_sentence(string)
  string_array = string.split(" ")
  reverse_string_array = []
  string_array.length.times do |i|
    if i < string_array.length - 1
      reverse_string_array << string_array.fetch(string_array.length-i-1) + " "
    else
      reverse_string_array << string_array.fetch(string_array.length-i-1)
    end
  end
  reverse_string_array.join
end


# should all print true
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''

###################################################################################
# Or, this awesome code!
def reverse_sentence(sentence)
  array = sentence.split(' ')
  res = []
  counter = array.size
  while counter.positive?
    res << array.pop
    counter -= 1
  end
  res.join(' ')
end


# Or the easy way, using #reverse method
#def reverse_sentence(string)
#  string.split.reverse.join(' ')
#end
