# right_triangles.rb
# method that takes 1 positive integer, n
# display a right triangle whose sides have n stars
# hypotenuse (diagonal side) should have one end at the lower-left
# and the other end at the upper-right

def triangle(n)
  n.times do |i|
    (n-i-1).times do
      print " "
    end
    (i + 1).times do
      print "*" 
    end
    print "\n"
  end
end

triangle(5)

#    *
#   **
#  ***
# ****
#*****

# Solution:
def triangle(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end
