# egyptian_fractions.rb
# 2 methods
# 1: takes a rational number as argument and return array of the denominators of the 
# egyptian number
# 2: reverse num1 where it takes the array of egyptian number denominators and return 
# a rational number in return

# Rational number: any number that can be represented as the result of the division
# between 2 integers
# Egyptian number: sum of series of unit fractions (no 2 are the same)

def egyptian(num)
  i = 0
  result = []
  while num.numerator != num.denominator do
    numer = num.numerator
    denom = num.denominator
    if numer < denom && i != (denom / numer) + 1
      if result.include?((denom / numer) + 1)
        i += 1
      else
        i = (denom / numer) + 1
      end
    else
      i += 1
    end
    result << i
    num -= Rational(1, i)
    break if num.numerator == 1 && Rational(1, i) != num
  end
  result << num.denominator
  result
end

def unegyptian(e_frac)
  result = Rational(0, 1)
  e_frac.each{|denom| result += Rational(1, denom)}
  result
end

p egyptian(Rational(1, 1))

p egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]

p egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
p egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)


# LS Solution:
def egyptian(target_value)
  denominators = []
  unit_denominator = 1
  until target_value == 0
    unit_fraction = Rational(1, unit_denominator)
    if unit_fraction <= target_value
      target_value -= unit_fraction
      denominators << unit_denominator
    end

    unit_denominator += 1
  end

  denominators
end

def unegyptian(denominators)
  denominators.inject(Rational(0)) do |accum, denominator|
    accum + Rational(1, denominator)
  end
end
