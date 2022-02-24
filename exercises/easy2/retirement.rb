# retirement.rb
# program that prompt the usr for current age and retirement age
# return: display when the usr will retire and how many years left
# use Time class to determine the current year!

puts "What is your age? "
age = gets.chomp.to_i
puts "At what age would you like to retire? "
retire_age = gets.chomp.to_i

puts "It's #{year = Time.now.year}. You will retire in #{year + (retire_age - age)}.\n" +
      "You have only #{retire_age - age} years of work to go!"

