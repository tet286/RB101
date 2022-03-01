# bannerizer.rb
# method that will take a short line of text
# print it within a box

def print_n_time(n,char1, char2)
  print char1
  (n+2).times{print char2}
  print char1 + "\n"
end

def print_in_box(text)
  n = text.length
  print_n_time(n,"+","-")
  print_n_time(n,"|"," ")
  print "|"," ",text," ","|\n"
  print_n_time(n,"|"," ")
  print_n_time(n,"+","-")
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')

# Solution
def print_in_box(message)
  horizontal_rule = "+#{'-' * (message.size + 2)}+"
  empty_line = "|#{' ' * (message.size + 2)}|"

  puts horizontal_rule
  puts empty_line
  puts "| #{message} |"
  puts empty_line
  puts horizontal_rule
end