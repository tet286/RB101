# char_count.rb
# program that prompt a word or words
# returns the number of character exclude spaces

puts "Please write word or multiple words: "
string = gets.chomp
puts "There are #{string.split(%r{\s*}).length} character in \"#{string}\"."

# Solution
print 'Please write word or multiple words: '
input = gets.chomp
number_of_characters = input.delete(' ').size
puts "There are #{number_of_characters} characters in \"#{input}\"."