def triangle(rows)
  1.upto(rows) do |count|
    puts "#{" " * (rows-count)}#{"*" * count}"
  end
end

triangle(5)
triangle(9)
