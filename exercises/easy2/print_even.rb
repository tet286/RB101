# print_even.rb
# print all even numbers from 1 to 99
# inclusive, to the console, with each number on a separate line

numbers = (1..99).to_a
numbers.each{|num|puts num if num.even?}

# Or the Solution
value = 1
while value <= 99
  puts value if value.even?
  value += 2
 end