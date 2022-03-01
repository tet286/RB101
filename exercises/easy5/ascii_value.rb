# ascii_value.rb
# method that takes 1 argument, a string
# return the ASCII string value of that string
# ASCII string value = sum(ASCII value of each characters)
# use String#ord

def ascii_value(string)
  char_value = string.chars.map{|char| char.ord}
  char_value.sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0
