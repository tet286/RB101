# letter_counter.rb
# method that takes 1 string
# return a hash that contains number of characters that are
# 3 entries: lowercase, uppercase, and neither

LOWER_CASE = ('a'..'z')
UPPER_CASE = ('A'..'Z')

def letter_case_count(string)
  result = {lowercase: 0, uppercase: 0, neither: 0}

  string.chars.each do |char|
    if LOWER_CASE.include?(char)
      result[:lowercase] += 1
    elsif UPPER_CASE.include?(char)
      result[:uppercase] += 1
    else
      result[:neither] += 1
    end 
  end

  result
end

letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

# Even shorter solution:
def letter_case_count(string)
  counts = {}
  characters = string.chars
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
  counts
end
