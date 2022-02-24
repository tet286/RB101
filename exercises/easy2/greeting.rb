# greeting.rb
# program that will ask for usr name
# return: greet the usr
# if the usr writes "name!" then the computer yell back to the usr!
# use String#chomp or String#chop!

puts 'What is your name? '
name = gets.chomp
if name.end_with?('!')
  name = name.chop.upcase
  puts "HELLO #{name}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end

