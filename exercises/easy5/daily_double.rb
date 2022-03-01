# daily_double.rb
# method that takes a string
# return a input string with consecutive duplicate characters
# colapsed into a single character
# do not use String#squeeze or String#squeeze!

def crunch(string)
  array = string.chars
  new_array = []
  array.length.times do |i|
    next if array[i] == array[i+1]
    new_array << array[i]
  end 
  p new_array.join
end

crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

# Solution:
def crunch(text)
  index = 0
  crunch_text = ''
  while index <= text.length - 1
    crunch_text << text[index] unless text[index] == text[index + 1]
    index += 1
  end
  crunch_text
end

# Or this cool one:
def crunch(input)
  result = ''

  input.chars.each do |char|
    result << char unless result.chars.last == char
  end

  result
end

# Or using regex:
def crunch(str)
  str.gsub(/(.)\1+/, '\1')
end