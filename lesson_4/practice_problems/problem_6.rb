# problem_6.rb
# Amend this array so that the names are all shortened to just the first 3 characters

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map!{|name| name[0,3]}

p flintstones
