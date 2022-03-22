# name_swap.rb
# method that takes 1 first name, 1 space, and 1 last name = 1 string
# return a string that contains the last name, 1 comm, 1 space, and the first name

def swap_name(string)
  p string.split.reverse.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'
