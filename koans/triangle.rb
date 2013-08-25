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

    # Any two sides must be longer than the third side
    if (a + b <= c) || (a + c <= b) || (b + c <= 1)
        raise TriangleError
    end

    case [a, b, c].uniq.length
    when 1
        :equilateral
    when 2
        :isosceles
    else
        :scalene
    end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
