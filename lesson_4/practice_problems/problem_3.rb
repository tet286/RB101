# problem_3.rb
# remove people with age 100 and greater

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.delete_if{|_,age| age >= 100}

p ages

# Other solutions using keep_if:
ages.keep_if { |_, age| age < 100 }

# Or using select!:
ages.select!{|_,age|, age < 100}
