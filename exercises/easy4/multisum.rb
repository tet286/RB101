# multisum.rb
# method that takes 1 argument, an integer
# search for all multiples of 3 or 5 that lie between 1 and some other number
# computes the sum of those multiples
# assume argument > 1

def multiples(array,number)
  new_array = array.select{|num| num if num % number == 0} 
end

def multisum(number)
  num_array = (1..number).to_a
  (multiples(num_array,3) + multiples(num_array,5)).uniq.sum
end

# All tests below print >> true
p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168

# solution
def multiple?(number, divisor)
  number % divisor == 0
end

def multisum(max_value)
  sum = 0
  1.upto(max_value) do |number|
    if multiple?(number, 3) || multiple?(number, 5)
      sum += number
    end
  end
  sum
end