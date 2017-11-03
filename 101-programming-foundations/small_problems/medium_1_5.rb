def diamond(amount)
  #Set up number of diamonds per row
  diamonds = (1..amount).select{|n|n.odd?}
  diamonds.concat(diamonds[0..-2].reverse)

  #Append strings
  diamonds.each do |diamond|
    spaces = (amount - diamond) / 2
    puts "#{" " * spaces }#{"*" * diamond}#{" " * spaces}"
  end
end

def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
   stars = " " * number_of_stars
   stars[0] = '*'
   stars[-1] = "*"
      puts stars.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end

diamond(9)

diamond(3)

diamond(1)