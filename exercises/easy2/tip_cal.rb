# tip_cal.rb
# program prompt the bill amount and tip rate
# return tip amount and total bill amount

## input:
puts 'What is the bill? '
bill = gets.chomp.to_f
puts 'What is the tip percentage? '
percent = gets.chomp.to_f

## calculate and return:
puts "The tip is $#{tip = bill*percent/100.round(2)}\n" +
      "The total is $#{bill+tip}"

# Further Exploration:
# Our solution prints the results as $30.0 and $230.0 
# instead of the more usual $30.00 and $230.00.
# Modify your solution so it always prints the results with 2 decimal places.
# use Kernel#format

puts "The tip is $#{format('%.2f',tip = bill*percent/100)}\n" +
      "The total is $#{format('%.2f',bill+tip)}"
