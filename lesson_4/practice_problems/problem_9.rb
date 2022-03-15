# problem_9.rb
# write titleize implementation => has each word capitalized

words = "the flintstones rock"
title = words.split.map{|word| word.capitalize}.join(" ")

puts title
