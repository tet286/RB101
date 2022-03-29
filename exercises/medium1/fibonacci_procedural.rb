# fibonacci_procedural.rb
# write fibonacci method without recursion

def fibonacci(n)
  return 1 if n <= 2
  fibonacci = [1, 1]
  (n - 2).times do 
    fibonacci.push(fibonacci[0] + fibonacci[1]).shift
  end
  fibonacci[1]
end

p fibonacci(3) == 2
p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
#fibonacci(100_001) # => 4202692702.....8285979669707537501

# LS Solution:
def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last
end
