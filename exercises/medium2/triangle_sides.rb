# triangle_sides.rb
# a method that takes the lengths of the 3 sides of a triangle as arguments
# return a symbol(:equilateral, :isosceles, :scalene, :invalid)
# equilateral: all 3 sides are of equal length
# isosceles: 2 sides are of equal length, while the 3rd is different
# scalene: all 3 sides are of different length
# invalid: sum of 2 short length < longest length or input > 0

def triangle(l1, l2, l3)
  sides = [l1, l2, l3].sort
  if sides[2] > (sides[0] + sides[1]) ||  sides.any?(0)
    return :invalid
  elsif sides.uniq.size == 1
    return :equilateral
  elsif sides.uniq.size == 2
    return :isosceles
  else
    return :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
