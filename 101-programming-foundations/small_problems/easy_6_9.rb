def include?(array, match)
  return true if array.select{|element| element == match}.size > 0
  false
end

def include(array, match)
  !!array.find_index(match)
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
