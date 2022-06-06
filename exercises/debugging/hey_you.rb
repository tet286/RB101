# hey_you.rb
# modify so the code produce the expected output

def shout_out_to(name)
  # name.chars.each { |c| c.upcase! } <-- original code
  name = name.chars.map { |c| c.upcase! }.join

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'


# LS solution:
def shout_out_to(name)
  puts 'HEY ' + name.upcase
end
