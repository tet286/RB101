# capitalize_words.rb
# method that takes 1 string 
# return 1 new string that contains the original values with the first character
# of every word capitalized and all other letter lowercase
# assume words are any sequence of non-blank characters

def word_cap(string)
  new_string = string.split.map{|word| word.capitalize}
  new_string.join(" ")
end

word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# Shorter Solution:
def word_cap(words)
  words.split.map(&:capitalize).join(' ')
end

# Further Exploration: without using capitalize, 2 solutions
# Solution 2: Using alphabet database
LOWER_CASE = ('a'..'z').to_a
UPPER_CASE = ('A'..'Z').to_a

def word_cap(string) 
  new_string = []
  string.split.each do |word|
    if LOWER_CASE.include?(word[0])
      word[0] = UPPER_CASE[LOWER_CASE.index(word[0])]
    end  
    (word.size-1).times do |i|
      if UPPER_CASE.include?(word[i+1])
        word[i+1] = LOWER_CASE[UPPER_CASE.index(word[i+1])]
      end
    end
    new_string << word
  end

  new_string.join(' ')
end

# Solution 1: using upcase and downcase
def word_cap(string) 
  new_string = []
  string.downcase.split.map do |word|
    word[0] = word[0].upcase
    new_string << word
  end
  new_string.join(' ')
end
