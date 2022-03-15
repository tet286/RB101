# problem_7.rb
# create a hash that expresses the frequency with which each letter occurs in string

statement = "The Flintstones Rock"

string_hash = {}
statement.chars.uniq.each{|elm| string_hash[elm] = statement.count(elm) if elm != " "}
p string_hash

# Other solution:
result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a

letters.each do |letter|
  letter_frequency = statement.count(letter)
  result[letter] = letter_frequency if letter_frequency > 0
end
