# arithmetic.rb
# program that prompt usr for 2 positive integers
# returns: print result of the following operations on the 2 numbers:
# addition, subtraction, product, quotient, remainder, and power

def prompt(message)
  puts "==> "+ message
end

prompt('Please enter the first positive integer: ')
num_1 = gets.chomp.to_i
prompt('Please enter the first positive integer: ')
num_2 = gets.chomp.to_i
prompt("#{num_1} + #{num_2} = #{num_1+num_2}")
prompt("#{num_1} - #{num_2} = #{num_1-num_2}")
prompt("#{num_1} x #{num_2} = #{num_1*num_2}")
prompt("#{num_1} / #{num_2} = #{num_1/num_2}")
prompt("#{num_1} % #{num_2} = #{num_1%num_2}")
prompt("#{num_1} ** #{num_2} = #{num_1**num_2}")

# Awesome Solution:
OPERATORS = %w(+ - * / % **)
nums = []

puts "==> Enter the first number:"
nums << gets.to_i
puts "==> Enter the second number:"
nums << gets.to_i

OPERATORS.each do |x|
  puts "==> #{nums[0]} #{x} #{nums[1]} = #{nums.inject(x)}"
end