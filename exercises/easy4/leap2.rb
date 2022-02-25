# leap2.rb
# update method in leap1.rb to determine leap years both before and after 1752.

# The British Empire adopted the Gregorian Calendar in 1752, which was a leap year.
# Prior to 1752, the Julian Calendar was used. Under the Julian Calendar,
# leap years occur in any year that is evenly divisible by 4.


def leap_year?(year)
  if year < 1752 && year % 4 == 0
    true
  elsif (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
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
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true