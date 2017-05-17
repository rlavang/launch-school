def increment_by_two(array)
  array = array.map do |value|
    value + 2
  end
end

sample_array = [1,2,3,4,5]
#Print original array
p sample_array

#Call function and print newly modified value
p increment_by_two(sample_array)
