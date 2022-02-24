# odd.rb
# method takes one integer argument, positive,negative or zero
# returns true if the number's absolute value is odd.
# assume input is an integer
# can't use Integer#odd? method

def odd?(number)
  puts "absolute of #{number} is odd? answer = #{number.abs % 2 == 1}"
end

odd?(3)   # => absolute of 3 is odd? answer = true
odd?(0)   # => absolute of 0 is odd? answer = false
odd?(8)   # => absolute of 8 is odd? answer = false
odd?(-9)  # => absolute of -9 is odd? answer = true