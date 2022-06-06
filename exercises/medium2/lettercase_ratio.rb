# lettercase_ratio.rb
# a method that takes a string, return a hash that contains 3 entries
# 1. % of lowercase letters
# 2. % of uppercase letters
# 3. % of characters that are neither
# assume the string will always contain at least one character

def letter_percentages(string)
  lower_count = string.count("a-z") * 1.0 / string.size * 100
  upper_count = string.count("A-Z") * 1.0 / string.size * 100
  other_count = string.count("^a-zA-Z") * 1.0 / string.size * 100
  return { lowercase: lower_count, uppercase: upper_count, neither: other_count }
end


p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
p letter_percentages('abcdefGHI')

# LS Solution:
def letter_percentages(string)
  counts = {}
  percentages = {}
  characters = string.chars
  length = string.length

  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }

  calculate(percentages, counts, length)

  percentages
end

def calculate(percentages, counts, length)
  percentages[:lowercase] = (counts[:lowercase] / length.to_f) * 100
  percentages[:uppercase] = (counts[:uppercase] / length.to_f) * 100
  percentages[:neither] = (counts[:neither] / length.to_f) * 100
end
