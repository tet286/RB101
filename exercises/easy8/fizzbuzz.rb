# fizzbuzz.rb
# method that takes 2 arguments, 1 starting and 1 ending number
# print out all numbers between the two numbers
# print "Fizz" if a number is divisible by 3
# print "Buzz" if a number is divisible by 5
# print "FizzBuzz" if a number is divisible by 3 and 5

def fizzbuzz(num1, num2)
  (num1..num2).each do |num|
    print "#{num}"
  end
end


p fizzbuzz(1, 15)
# -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
