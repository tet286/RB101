# word_to_digit.rb
# method that takes a sentence string as input
# return the same string with any sequence of the words
# 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine'
# to digits

NUMBER = {'zero'=> 0, 'one'=> 1, 'two'=> 2, 'three'=> 3, 'four'=> 4, 
          'five'=> 5, 'six'=> 6, 'seven'=> 7, 'eight'=>8, 'nine'=> 9}

def word_to_digit(sentence)
  sentence.gsub!(/\w+/) do |m|
    NUMBER.fetch(m,m)
  end
end

word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

# without gsub:
def word_to_digit(sentence)
  sentence = sentence.split
  result = sentence.map do |word|
    word2 = word.chars.map{|char| char =~ /[A-Za-z]/ ? char : ''}.join.downcase
    punc = word.chars.map{|char| char =~ /[^A-Za-z]/ ? char : ''}.join
    if NUMBER.key?(word2)
      NUMBER[word2].to_s + punc
    else
      word
    end
  end
  result.join(" ")
end

# LS Solution:
DIGIT_HASH = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
  'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}.freeze

def word_to_digit(words)
  DIGIT_HASH.keys.each do |word|
    words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
  end
  words
end
