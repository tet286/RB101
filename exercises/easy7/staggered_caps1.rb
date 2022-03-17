# staggered_caps1.rb
# method that takes 1 string
# returns 1 new string contains original value with staggered capitalize scheme

def staggered_case(string)
  new_string = []
  string.downcase.chars.each do |char|
    char = char.upcase if new_string.size.even?
    new_string << char
  end
  p new_string.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'


# LS Solution:
def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end
