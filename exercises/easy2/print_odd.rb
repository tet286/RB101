# print_odd.rb
# print all odd numbers from 1-99
# inclusive, to the console, with each number on a separate line

numbers = (1..99).to_a
numbers.each{|num|puts num if num.odd?}

# Solution
value = 1
while value <= 99
  puts value
  value += 2
 end

# Further Exploration
# Repeat this exercise with a technique different from the one you just used,
# and different from the solution shown above. 
# use Integer#upto or Array#select methods, or maybe use Integer#odd?

numbers = []
1.upto(99) {|i| numbers << i}
numbers.select{|num| puts num if num.odd?}