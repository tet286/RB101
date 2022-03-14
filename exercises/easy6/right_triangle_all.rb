# Further exploration:
# Try modifying your solution so it prints the triangle upside down from its 
# current orientation. Try modifying your solution again so that you can display 
# the triangle with the right angle at any corner of the grid.

def corner(n, corner)
  if corner.downcase.start_with?('u')
    spaces, stars = [0, n]
  else
    spaces, stars = [n - 1, 1]
  end
end

def triangle(n, corner)
  spaces, stars = corner(n, corner)

  n.times do
    puts (' ' * spaces) + ('*' * stars) if corner.downcase.end_with?("r")
    puts ('*' * stars) + (' ' * spaces) if corner.downcase.end_with?("l")
    if corner.downcase.start_with?("u")
      spaces += 1
      stars -= 1
    else
      spaces -= 1
      stars += 1
    end
  end
end

triangle(5, 'UL')
triangle(5, 'LL')
triangle(5, 'UR')
triangle(5, 'LR')

