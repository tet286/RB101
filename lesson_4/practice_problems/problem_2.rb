# problem_2.rb
# Add up all ages from the Munster family hash

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

all_age = 0
ages.each{|key, value| all_age += value }

p all_age

# Other solutions:
total_ages = 0
ages.each { |_,age| total_ages += age }
total_ages # => 6174

# OR:
ages.values.inject(:+) # => 6174
