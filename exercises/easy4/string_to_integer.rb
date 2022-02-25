# string_to_integer.rb
# method that takes a string and convert it into an integer
# cannot use String#to_i or Integer()

def string_to_integer(string)
  number_array = string.chars.map{|char| char.ord - 48}
  number = 0
  number_array.each{|digit| number = 10 * number + digit }
  number
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570