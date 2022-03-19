# double_char1.rb
# method that takes 1 string
# return 1 new string in which every character is doubled

def repeater(string)
  result = string.chars.map {|char| char + char}.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''

# Or this technique:
def repeater(string)
  string.chars.map {|el| el * 2}.join
end
