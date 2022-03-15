# problem_5.rb
# find the index of the first name that starts with "Be"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

p flintstones.index{|elm| elm.start_with?("Be")}

# Other solution without using start_with?:
flintstones.index { |name| name[0, 2] == "Be" }
