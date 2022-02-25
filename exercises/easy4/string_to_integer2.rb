# string_to_integer2.rb
# extend method in string_to_integer.rb to include (-) and (+)

def string_to_integer(string)
  number_array = string.chars.map{|char| char.ord - 48}
  number = 0
  number_array.each{|digit| number = 10 * number + digit }
  number
end

def string_to_signed_integer(string)
  if string.start_with?('-','+')
    if string.chars[0] == '-'
      -string_to_integer(string.delete '-')
    elsif string.chars[0] == '+'
      string_to_integer(string.delete '+')
    end
  else
    string_to_integer(string)
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100

# Better Solution:
def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end