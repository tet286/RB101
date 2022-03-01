# alphabet_num.rb
# method that takes an array of intergers between 0 and 19
# returns an array of those integers sorted based on the English word for ea. num

NUM_KEY = (0..19).to_a
ALPHABETIC_NUM_VALUE = %w(zero one two three four five six 
                    seven eight nine ten eleven twelve thirteen 
                    fourteen fifteen sixteen seventeen eighteen nineteen)
ALPHABETIC_NUM_HASH = {}
NUM_KEY.each_index{|i| ALPHABETIC_NUM_HASH[NUM_KEY[i]]=ALPHABETIC_NUM_VALUE[i]}

def alphabetic_number_sort(num_array)
  sorted_string = num_array.map{|num| ALPHABETIC_NUM_HASH[num]}.sort
  sorted_string.map{|word| ALPHABETIC_NUM_HASH.key(word)}
end

alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

# Solution:
NUMBER_WORDS = %w(zero one two three four
                  five six seven eight nine
                  ten eleven twelve thirteen fourteen
                  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
  numbers.sort_by { |number| NUMBER_WORDS[number] }
end
