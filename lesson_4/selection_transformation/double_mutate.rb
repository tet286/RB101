# double_mutate.rb

def double_numbers!(numbers)
  counter = 0

  loop do
    break if counter == numbers.size

    numbers[counter] *= 2

    counter += 1
  end

  numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p my_numbers.object_id
double_numbers!(my_numbers) # => [2, 8, 6, 14, 4, 12]
p my_numbers.object_id
