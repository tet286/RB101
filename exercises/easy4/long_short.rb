# long_short.rb
# method that takes 2 arguments, 2 strings, one long and one short
# determine the long string
# return the concatenating short_long_short

def short_long_short(string1, string2)
  short = string1
  long = string2
  if string2.length < string1.length
    short = string2
    long = string1
  end
  string = short.concat(long,short)
end


# All test below should print >> true:
p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"

# Or just if/else loop:
def short_long_short(string1, string2)
  if string1.length > string2.length
    string2 + string1 + string2
  else
    string1 + string2 + string1
  end
end