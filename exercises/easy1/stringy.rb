# stringy.rb
# a method that takes one argument, a positive integer
# returns a string of alternativing 1s and 0s, always start with 1
# the length of string match the input integer

def stringy(number)
  string = ''
  number.times do |i|
    if i.even?
      string += '1'
    else
      string +='0'
    end
  end
  string
end

# All tests below should print true:
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

#SOLUTION
def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end