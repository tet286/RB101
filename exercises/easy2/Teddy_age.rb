# Teddy_age.rb
# program that generate random number between 20-200
# print Teddy's age with the random generated number
## Kernel#random

#puts "Teddy is #{rand(20..200)} years old!"

# Further Exploration:
# Modify this program to ask for a name, and then print the age for that person. 
# For an extra challenge, use "Teddy" as the name if no name is entered.

puts "Enter a name for a person: "
name = gets.chomp
name == '' ? (puts "Teddy is #{rand(20..200)} years old!") : (puts "#{name} is #{rand(20..200)} years old!")