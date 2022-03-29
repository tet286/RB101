# diamonds.rb
# method that displays a 4-pointed diamond iin an n x n grid
# n  is an odd integer that is supplied as an argument to the method
# assume that input will always be an odd integer

def print_diamond(star_num, n)
  space_num = (n - star_num) / 2
  puts "#{' ' * space_num}#{'*' * star_num}#{' ' * space_num}"
end

def diamond(n)
  diamond = [n, 1]
  increment = [2, -2]
  star_num = -1
  diamond.each_with_index do |half, i|
    until star_num == half
    star_num += increment[i]
    print_diamond(star_num, n)
    end
  end
end

diamond(1)
diamond(3)
diamond(9)
diamond(13)

# LS Solution:
def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end

# Further Exploration: print only the outline of the diamond
def diamond(n)
  diamond = [n, 1]
  increment = [2, -2]
  total_num = -1
  diamond.each_with_index do |half, i|
    until total_num == half
    total_num += increment[i]
    out_space = (n - total_num) / 2
      if total_num == 1
        puts "#{' ' * out_space}*"
      else
        in_space = total_num - 2
        puts "#{' ' * out_space}*#{' ' * in_space}*"
      end
    end
  end
end
