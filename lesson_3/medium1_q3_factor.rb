# medium1_q3_factor.rb
# revise factor method so it will work with 0 and negative number
# revise it without using being/end until

def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

p factors(10)
p factors(0)
p factors(-10)