# 1000_lights.rb
# method that takes 1 integer, total number of switches, n
# return an array that identifies which lights are on after n repetitions

# example: n = 5
# round 1: every light is turned on
# round 2: 2,4 = off and 1,3,5 = on
# round 3: 2,3,4 = off and 1,5 = on
# round 4: 2,3 = off, and 1,4,5 = on
# round 5: 2,3,5 = off and 1,4 = on
# result = [1,4] == lights that are on
# similarly n = 10, result = [1,4,9]

def switches(n)
  lights = [1] * n      # round 1
  count = 2
  (n - 1).times do        # round 2-5
    (n / count).times do |i|
      lights[((i + 1) * count) - 1] *= -1
    end
    count += 1
  end
  result = []
  lights.each_index{|index| result << index + 1 if lights[index] == 1}
  result
end

switches(5)
switches(10)
switches(1000)

# LS Solution:
# initialize the lights hash
def initialize_lights(number_of_lights)
  lights = Hash.new
  1.upto(number_of_lights) { |number| lights[number] = "off" }
  lights
end

# return list of light numbers that are on
def on_lights(lights)
  lights.select { |_position, state| state == "on" }.keys
end

# toggle every nth light in lights hash
def toggle_every_nth_light(lights, nth)
  lights.each do |position, state|
    if position % nth == 0
      lights[position] = (state == "off") ? "on" : "off"
    end
  end
end

# Run entire program for number of lights
def toggle_lights(number_of_lights)
  lights = initialize_lights(number_of_lights)
  1.upto(lights.size) do |iteration_number|
    toggle_every_nth_light(lights, iteration_number)
  end

  on_lights(lights)
end

p toggle_lights(1000)

# Shorter Solution:
def lights(n)
  result = []
  (1..n).each do |switch_num|
    switch_state = false
    (1..n).each do |pass_num|
      switch_state = !switch_state if switch_num % pass_num == 0
    end
    result << switch_num if switch_state
  end
  result
end
