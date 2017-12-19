def diamond(rows)
  total = 1
  max_diamonds = false
  1.upto(rows) do |row|
    spaces = rows - total
    one_side_space = spaces / 2
    diamonds = total
    puts "#{" " * one_side_space}#{"*" * diamonds}#{" " * one_side_space}"
    max_diamonds = true if total == rows
    if max_diamonds
      total -= 2
    else
      total +=2
    end
  end
end



diamond(1)
diamond(3)
diamond(9)