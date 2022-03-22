# group_anagrams.rb
# program that prints out words that are anagrams
# anagrams are words that have the same exact letters in them
# but in a different order

def compare_word(word1, array)
  compare_size = word1.chars.uniq.size
  array.select{|word| word1.chars.intersection(word.chars).size == compare_size}
end

def anagrams(array)
  count = array.size
  while count > 0 
    p result = compare_word(array[0], array)
    array -= result
    count -= result.size
  end
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

anagrams(words)

# LS Solution:
result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each_value do |v|
  puts "------"
  p v
end

# Shorter Solution:
anagrams = Hash.new { |hash, key| hash[key] = [] }

words.each { |word| anagrams[word.chars.sort.join] << word }
anagrams.values.each { |group| p group}

# Big method: have not broken down
def anagrams(array)
  count = array.size
  result = []
  array.map do |word|
    count2 = 0
    sub_result = []
    count.times do |i|
      if word.chars.intersection(array[i].chars).size == 4
        sub_result << array[i]
        count2 += 1
      else
        next
      end
    end
    array = array - sub_result
    count = count - count2
    result << sub_result
  end
  result.delete([])
  p result
end
