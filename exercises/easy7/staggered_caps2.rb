# staggered_caps2.rb
# modify method from staggered_caps1.rb so it ignores non-alphabetic characters
# when determining whether it should uppercase or lower case each letter.

def staggered_case(string)
  new_string = []
  location = 0
  string.downcase.chars.each do |char|
    if char =~ /[^A-za-z]/
      new_string << char
      next
    end
    char = char.upcase if location.even?
    new_string << char
    location += 1
  end
  new_string.join
end

staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
