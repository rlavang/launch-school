def include?(array, search)
  array_contains = array.select{|element| element == search}
  array_contains.length >= 1 ? true : false
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false