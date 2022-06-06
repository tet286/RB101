# unlucky_days.rb
#method that returns the number of Friday the 13ths in the year given by an argument
# assume the year > 1752 (When UK adopted the modern Gregorian Calendar)

require 'date'

MONTHS = (1..12).to_a

def friday_13th(year)
  count = 0
  MONTHS.each do |month|
    count += 1 if Date.new(year, month, 13).friday?
  end
  count
end


p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2

# LS Solution:
require 'date'

def friday_13th(year)
  unlucky_count = 0
  thirteenth = Date.civil(year, 1, 13)
  12.times do
    unlucky_count += 1 if thirteenth.friday?
    thirteenth = thirteenth.next_month
  end
  unlucky_count
end

# Other Solution:
require 'date'

def friday_13th(year)

  Date.new(year).step(Date.new(year,-1,-1)).
  select {|day| day.friday? && day.mday == 13 }.size

end
