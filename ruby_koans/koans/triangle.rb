# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#

def triangle(a, b, c)
  equal_sides = equal_sides_count(a, b, c)
  if equal_sides == 3
    :equilateral
  elsif equal_sides == 2
    :isosceles
  else
    :scalene
  end
end

def equal_sides_count(*args)
  if args[0] == args[1] and args[0] == args[2]
    3
  elsif args[0] != args[1] and args[0] != args[2] and args[1] != args[2]
    0
  else
    2
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
