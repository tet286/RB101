# square.rb
# method that takes 2 arguments, square, using multiply.rb method
# return the squared result

def multiply(num1,num2)
  product = num1 * num2
end

def square(num)
  multiply(num,num)
end

puts square(5)
puts square(-8)