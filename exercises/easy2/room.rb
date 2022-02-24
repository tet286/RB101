# room.rb
# program that ask usr for a Length and Width of a room in meters
# returns: display the Area of the room in both m2 and ft2
# 1 m2 = 10.7639 ft2

## input:
puts 'Please enter the length of the room in meters: '
length = gets.chomp.to_f
puts 'Please enter the width of the room in meters: '
width = gets.chomp.to_f

## calculate and return:
puts "The area of the room is #{length*width} square meters" + \
      "(#{format('%.2f',length*width*10.7639)} square feet)."

#Further Exploration:
# Modify this program to ask for the input measurements in feet, 
# and display the results in square feet, square inches, and square centimeters.

## input:
puts 'Please enter the length of the room in feet: '
length = gets.chomp.to_f
puts 'Please enter the width of the room in feet: '
width = gets.chomp.to_f

## calculate and return:
puts "The area of the room is #{length*width.round(2)} square feet " + \
      "(#{length*width*144.round(2)} square inches) " + \
      "and (#{length*width*144*6.4516.round(2)} square centimeters)."
