def triangle(side1, side2, side3)
    all_sides = [side1, side2, side3].sort{|a, b| b <=> a}
    if all_sides[0] > (all_sides[1] + all_sides[2]) || all_sides.include?(0)
      :invalid
    elsif all_sides.uniq.length == 1
      :equilateral
    elsif all_sides.uniq.length == 2
      :isosceles
    else
      :scalene
    end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid