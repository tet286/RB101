# sum_product.rb
# program that prompt usr for an integer > 0 and ask if usr want sum or product
# of all number between 1 and the entered integer

puts 'Please enter an integer greater than 0: '
number = gets.chomp.to_i
puts "Enter 's' to compute the sum, 'p' to compute the product: "
operation = gets.chomp.downcase

case operation
when 's'
  puts "The sum of the integers between 1 and #{number} is #{(1..number).to_a.sum}."
when 'p'
  product = 1
  1.upto(number) {|i| product *= i}
  puts "The product of the integers between 1 and #{number} is #{product}."
end

# Further exploration
# Try to use #inject in your solution to this problem.

puts 'Please enter an integer greater than 0: '
number = gets.chomp.to_i
puts "Enter 's' to compute the sum, 'p' to compute the product: "
operation = gets.chomp.downcase

case operation
when 's'
  puts "The sum of the integers between 1 and #{number} is #{(1..number).inject(:+)}."
when 'p'
  puts "The product of the integers between 1 and #{number} is #{(1..number).inject(:*)}."
end
