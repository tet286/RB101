# swap_case.rb
# method that takes 1 string
# returns 1 new string in which uppercase = lowercase and vice versa
# do not use String#swapcase

LOWER_CASE = ('a'..'z').to_a
UPPER_CASE = ('A'..'Z').to_a

def swapcase(string)
  new_string = []
  string.split.each do |word|
    word.size.times do |i|
      if LOWER_CASE.include?(word[i])
        word[i] = UPPER_CASE[LOWER_CASE.index(word[i])]
      elsif UPPER_CASE.include?(word[i])
        word[i] = LOWER_CASE[UPPER_CASE.index(word[i])]
      end
    end
    new_string << word
  end

  p new_string.join(' ')
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

# Solution using Regex, upcase, and downcase:
def swapcase(string)
  characters = string.chars.map do |char|
    if char =~ /[a-z]/
      char.upcase
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end
  characters.join
end
