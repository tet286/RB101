# leap1.rb
# method that takes 1 argument, a year > 0 
# reutrun <true> if the year is a leap year, <false> otherwise
# leap year occur in every year hat is evenly divisible by 4,
# unless the year is also divisible by 100
# If the year is evenly divisible by 100,
# then it is not a leap year unless the year is evenly divisible by 400.

def leap_year?(year)
  if year % 4 == 0 && year % 100 != 0
    true
  elsif year % 400 == 0
    true
  else
    false
  end
end

# All test below should print >> true
p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true

# Better Solution:
def leap_year?(year)
  (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
end