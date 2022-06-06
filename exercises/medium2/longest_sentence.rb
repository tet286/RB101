# longest_sentence.rb
# a program that read from a text file and then print the longest sentence
# in the file based on number of words.
# Sentences end in (.), (!), (?)
# Any sequence of characters that are not spaces or sentence-ending characters
# should be treated as a word.
# Also print the number of words in the longest sentence of that file

def longest_sentence(file_name)
  text1 = File.read("#{file_name}").chomp
  sentences = text1.split(/\.|\?|\!/)
  end_char = text1.split.select{|word| word if word =~ /[~.?!]/}
  word_num = sentences.map {|sentence| sentence.split.size}
  index = word_num.index(word_num.max)
  puts "#{sentences[index]}#{end_char[index][-1]}"
  puts "Containing #{word_num.max} words"
end

longest_sentence('sample_text.txt')
longest_sentence('sample_text2.txt')


# LS Solution:
text = File.read('sample_text.txt')
sentences = text.split(/\.|\?|!/)
largest_sentence = sentences.max_by { |sentence| sentence.split.size }
largest_sentence = largest_sentence.strip
number_of_words = largest_sentence.split.size

puts "#{largest_sentence}"
puts "Containing #{number_of_words} words"

# Other Solution:
def longest_sentence(file)
  longest = file.split(/(?<=[?.!])/).max_by {|sentence| sentence.split.size}
  number_of_words = longest.split.size

  puts "The longest sentence is: #{longest}"
  puts "Containing #{number_of_words} words"
end
def longest_paragraph(file)
  longest = file.split("\n\n").max_by { |paragraph| paragraph.split.size}
  number_of_words = longest.split.size

  puts "The longest paragraph is: #{longest}"
  puts "Containing #{number_of_words} words"
end
def longest_word(file)
  words = file.split(' ').delete_if {|word| word.gsub!(/[^A-Za-z]/, '')}.sort_by {|word| word.size}
  number_of_chars = words[-1].size
  longest = words.select { |word| word.size == number_of_chars }

  puts "Longest word(s): #{longest}"
  puts "Containing #{number_of_chars} characters"
end
