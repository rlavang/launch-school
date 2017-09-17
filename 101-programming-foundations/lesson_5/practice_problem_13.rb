arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]
sorted_array = arr.sort_by do |sub_array|
  sub_array.select do |element|
    element.odd?
  end
end
p sorted_array