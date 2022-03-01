# after_midnight2.rb
# 2 methods that each take a time of day in 24 hour format (hh:mm)
# return the number of minutes before and after midnight
# range 0..1439
# do not use Date and Time class

def after_midnight(time_string)
  time = time_string.split(':').map{|char| char.to_i}
  minutes = time[0] * 60 + time[1]
  minutes = 1440 - (time[0] * 60 + time[1]) if time[0] == 24
  return minutes
end

def before_midnight(time_string)
  time = time_string.split(':').map{|char| char.to_i}
  minutes = 1440 - (time[0] * 60 + time[1])
  minutes = time[0] * 60 + time[1] if time[0] == 0
  return minutes
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0

# SOLUTION
HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def after_midnight(time_str)
  hours, minutes = time_str.split(':').map(&:to_i)
  (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
end

def before_midnight(time_str)
  delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
  delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
  delta_minutes
end

# OR
def after_midnight(time)
  hours, min = time.split(':').map(&:to_i)
  hours == 24 ? 0 : (hours * 60) + min
end

def before_midnight(time)
  am = after_midnight(time)
  am == 0 ? 0 : 1440 - am
end