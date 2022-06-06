# my_abc.rb
# method that returns true if the word passed in as an argument can be spelled from 
# this set of blocks, false otherwise

# collection of spelling blocks:
# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M
# this limits the words you can spell with the blocks to just those words that do not
# use both letters from any given block. Each block can only be used once.

LETTER_BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(word)
  characters = word.upcase.chars
  LETTER_BLOCKS.each do |block|
    return false if characters.include?(block[0]) && characters.include?(block[1]) 
  end
  return true
end


block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true

# LS Solution:
BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 }
end
