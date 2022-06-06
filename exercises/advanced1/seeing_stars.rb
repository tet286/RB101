# seeing_stars.rb
# method that display 8-point star in an n x n grid, n == odd integer argument
# smallest star is 7x7

def star(n)
  space = (n - 3) / 2
  (space + 1).times{|i| puts "#{' ' * i}*#{' ' * (space - i)}*#{' ' * (space - i)}*"}
  puts "#{'*' * n}"
  (space + 1).times{|i| puts "#{' ' * (space - i)}*#{' ' * i}*#{' ' * i}*"}
end

star(7)
# star(9)

# bonus: circle (smallest 6 x 6)
# def circle(n)
#   space = n / 2
#   puts "#{' ' * space}*"
# end


# # LS Solution:
# def print_row(grid_size, distance_from_center)
#   number_of_spaces = distance_from_center - 1
#   spaces = ' ' * number_of_spaces
#   output = Array.new(3, '*').join(spaces)
#   puts output.center(grid_size)
# end

# def star(grid_size)
#   max_distance = (grid_size - 1) / 2
#   max_distance.downto(1) { |distance| print_row(grid_size, distance) }
#   puts '*' * grid_size
#   1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
# end

# # sine wave
# def sine_wave(height, freq)
#   # generate grid of appropriate size
#   grid = []
#   (height * 2 + 1 ).times { grid << (' ' * 80) }

#   y_vals = (0...80).map { |y| (height * Math.sin(y * freq)).round }
#   # change representation of y values to match array index
#   # the highest y value (height), for example, becomes 0 since this is the top line of the grid
#   y_vals.map! { |y| (y - height) * -1 } 
#   80.times { |x| grid[y_vals[x]][x] = '*' }

#   grid.each { |line| puts line }
# end

# sine_wave(1, 0.5)
# puts ''
# puts ''
# sine_wave(2, 0.25)
# puts ''
# puts ''
# sine_wave(10, 0.1)
