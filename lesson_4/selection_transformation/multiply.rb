# multiply.rb

def multiply(numbers, mul)
  mul_numbers = []
  counter = 0

  loop do
    
    current_number = numbers[counter]
    mul_numbers << current_number * mul
    counter += 1

    break if counter == numbers.size
    
  end
  
  mul_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]

p my_numbers
