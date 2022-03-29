# fibonacci_last_digit.rb
# compute a method that returns the last digit of the nth fibonacci number

def fibonacci_last(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end
  p last % 10
end

fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
fibonacci_last(123456789) # -> 4

# LS Solution:
def fibonacci_last(nth)
  last_2 = [1, 1]
  3.upto(nth) do
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
  end

  last_2.last
end

# Quick answer:
def fib_last(n)
  n = n % 60 # Further Exploration (last fib digit repeats every 60 fib numbers)
  fibonacci = [1, 1]
  (n-2).times { fibonacci = [ (fibonacci[1] % 10), (fibonacci[0] + fibonacci[1]) % 10 ] }
  fibonacci.last
end

# Using Antonio Serna's list of final digits, we can manage to make this:
def fibonacci_last(num)
  '011235831459437077415617853819099875279651673033695493257291'[num%60]
end
