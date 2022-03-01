# after_midnight1.rb
# a method that takes one argument, a time (minute based)
# returns the time of day in 24 hour format (hh:mm)
# if time is positive -> time is after midnight, one day = 1440
# do not use ruby Date and Time classes

def time_of_day(time_minutes)
  hour_t = 0
  hour_t = 24 if time_minutes < 0
  hour = hour_t + time_minutes / 60
  hour = (time_minutes % 1440) / 60 if time_minutes.abs > 1440

  minute = time_minutes % 60
  puts ("#{format('%02d:%02d', hour, minute)}")
end

time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"


# using Date and Time Class example + SOLUTION
require 'date'
MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def normalize_minutes_to_0_through_1439(minutes)
  while minutes < 0
    minutes += MINUTES_PER_DAY
  end

  minutes % MINUTES_PER_DAY
end

def time_of_day(delta_minutes)
  delta_minutes = normalize_minutes_to_0_through_1439(delta_minutes)
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  (Date.parse("Sunday") + Rational(delta_minutes, 1440)).strftime("%A %H:%M")
  {format('%02d:%02d', hours, minutes)}
end