# century.rb
# method that takes 1 argument, an initeger or a year
# return the century
# The return value should be a string that begins with the century number, 
# and ends with st, nd, rd, or th as appropriate for that number.
# New centuries begin in years that end with 01. 
# So, the years 1901-2000 comprise the 20th century.

def ordinal(century)
  if century < 110
    if century == 11
      ordinal = 'th'
    elsif century == 12
      ordinal = 'th'
    elsif century.to_s.end_with?('1')
      ordinal = 'st'
    elsif century.to_s.end_with?('2')
      ordinal = 'nd'
    elsif century.to_s.end_with?('3')
      ordinal = 'rd'
    else
      ordinal = 'th'
    end
  else
    ordinal ='th'
  end
end

def century(year)
  if year.to_s.end_with?('0')
    century = year / 100
  else
    century = year / 100 + 1
  end
  p century = "#{century}#{ordinal(century)}"
end


# All tests below should print >> true
p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'

# Better solution:
def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end