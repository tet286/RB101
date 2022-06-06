# matching_parentheses.rb
# method that takes a string as an argument, return true if all parentheses in the 
# string are properly balanced, false otherwise

def balanced?(string)
  #return false if string.count('()').odd?
  return false if string.split('(').size != string.split(')').size
  true
end


p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false

# LS Solution:
def balanced?(string)
  parens = 0
  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    break if parens < 0
  end

  parens.zero?
end
