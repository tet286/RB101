# tri-angles.rb
# method that takes 3 angles of a triangle as arguments and returns a symbol
# right: one angle of the triangle is a right angle (90 degrees)
# acute: all 3 angles of the triangle are less than 90 degrees
# obtuse: one angle is greater than 90 degrees
# invalid: sum of triangle = 180 degrees or all angles > 0
# assume integer valued angles and not floating point and in degree not radian

def triangle(a1, a2, a3)
  angles = [a1, a2, a3]
  if angles.sum != 180 || angles.any?(0)
    return :invalid
  elsif angles.any?(90)
    return :right
  elsif angles.any? {|angle| angle > 90}
    return :obtuse
  else
    return :acute
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid

# LS Solution:
def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]

  case
  when angles.reduce(:+) != 180, angles.include?(0)
    :invalid
  when angles.include?(90)
    :right
  when angles.all? { |angle| angle < 90 }
    :acute
  else
    :obtuse
  end
end
