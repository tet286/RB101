# welcome_stranger.rb
# method that takes 1 array and 1 hash
# return a greeting that uses the person's full name and mention title + occupation

def greetings(array,hash)
  puts "Hello, #{array.join(' ')}! " + 
        "Nice to have a #{hash[:title]} #{hash[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
#=> Hello, John Q Doe! Nice to have a Master Plumber around.
