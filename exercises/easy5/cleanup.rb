# cleanup.rb
# method that takes all lowercased string and assortment of non alphebetic chars
# return the string all non alphebetic chars replaced by spaces
# if one or more na chars occur in a row -> should only has 1 space

ASCII_ALPHABET = (97..122).to_a + (65..90).to_a 

def cleanup(string)
  array = string.chars.map do |char|
    if ASCII_ALPHABET.include?(char.ord)
      char
    else
      ' '
    end
  end
  array.join.squeeze(" ")
end

p cleanup("---what's my +*& line?") == ' what s my line '

# Solution
def cleanup(text)
  text.gsub(/[^a-z]/, ' ').squeeze(' ')
end