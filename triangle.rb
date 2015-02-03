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
  triangle = [a, b, c]

  raise TriangleError if catch_errors(triangle)

  return :equilateral if is_equilateral(triangle)
  return :isosceles if is_isosceles(triangle)
  return :scalene if is_scalene(triangle)
end

def catch_errors(triangle)
  a, b, c = triangle.sort
  a <= 0 or a + b <= c
end

def is_equilateral(triangle)
  triangle.all? { |x| x == triangle[0] }
end

def is_isosceles(triangle)
  triangle.uniq.length == 2
end

def is_scalene(triangle)
  triangle.uniq.length == triangle.length
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
