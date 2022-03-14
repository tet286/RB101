# fibonacci_index.rb
# method that takes an integer, number of digit of the fibonacci number
# return the index of the first number of that digit group
# first fibonacci has index of 1

def find_fibonacci_index_by_length(digit)
  fibonacci_numbers = [1, 1]
  fibonacci_number = 1

  while fibonacci_number.to_s.size < digit
  index = fibonacci_numbers.size - 2
  fibonacci_number = fibonacci_numbers[index] + fibonacci_number
  fibonacci_numbers << fibonacci_number
  end

  fibonacci_numbers.size 
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
