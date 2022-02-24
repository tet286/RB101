# search101.rb
# program that solicits 6 numbers from the user
# return: print a message that describes whether or not the 6th number
# appears amongst the first 5 numbers

def ordinal(i)
  if i == 1
    return 'st'
  elsif i == 2
    return 'nd'
  elsif i == 3
    return 'rd'
  else
    return 'th'
  end
end

numbers = []
5.times do |i|
  puts "Enter the #{i+1}#{ordinal(i+1)} number: "
  numbers << gets.chomp.to_i 
end

puts "Enter the last number: "
last_num = gets.chomp.to_i

if numbers.include?(last_num)
  puts "The number #{last_num} appears in #{numbers}."
else
  puts "The number #{last_num} does not appear in #{numbers}."
end





