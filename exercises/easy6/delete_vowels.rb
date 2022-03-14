# delete_vowels.rb
# method that takes an array of strings
# returns an array of the same string without the vowels
# removed vowels = a, e, i, o,u

def remove_vowels(string_array)
  string_array.map{|string| string.delete "aeiouAEIOU"}
end

remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
