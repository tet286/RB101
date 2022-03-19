# middle_char.rb
# method that takes 1 non-empty string
# return the middle character
# if the string.length.even?, return 2 middle characters

def center_of(string)
  puts "Empty Input String" if string.empty?
  middle_char = string.chars[(string.size / 2)]
  middle_char = string.chars[(string.size / 2 - 1)] + middle_char if string.size.even?
  middle_char
end


p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'

# Other Solution:
def center_of(string)
  mid = string.size / 2
  string.length.odd? ? string[mid] : string[mid - 1, 2]
end
