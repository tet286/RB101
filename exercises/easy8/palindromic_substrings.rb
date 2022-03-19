# palindromic_substrings
# method that takes 1 string
# returns a list of all substrings of a palindromic string
# should use substrings medthod from all_substrings.rb
# Further Exploration: ignores non-alphabetic characters and cases
def leading_substrings(string)
  (0..string.size - 1).map { |i| string[0..i].downcase.gsub(/[^0-9a-z ]/,'')}
end

def substrings(str)
  (0...str.size).map { |i| leading_substrings(str[i..-1]) }.flatten
end

def palindromes(string)
  substrings(string).select{|str| str if str == str.reverse && str.size > 1}
end

#p palindromes('abcd') == []
#p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') #== [
#  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#  '-madam-', 'madam', 'ada', 'oo'
#]
#p palindromes('knitting cassettes') == [
#  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
#]
