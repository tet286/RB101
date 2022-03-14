# cute_angles.rb
# method that takes 1 float number represent 0 - 360 deg angle
# return a string represent that angle in degree, minutes and second
# use symbol for result
# watch for rounding, use 2 digit numbers with leading zeros for minute and second

def dms(angle)
  degree = angle - (angle % 1)
  minute = (angle % 1) * 60
  second = minute.round(2) % 1 * 60
  puts "(#{degree.round}\xC2\xB0%02d'%02d" % [minute.round, second.round] + '")'
end

dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") #|| dms(360) == %(0°00'00")

# Solution using divmov and format:
DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(degrees_float)
  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end
