=begin
- input
  - array
- output
  - reversed array
- rules
  - cannot use reverse or reverse! methods
  - must mutate original array
- Data Structures
  - array
- Algorithms
  - Creat a counter starting at 0
  - Loop over array
  - Loop until array length
  - pop last item of array and prepend it to front
=end

def reverse (array)
  left_index = 0
  right_index = -1
  while left_index < array.length / 2
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -=1
  end
  array
end
p reverse([1,2,3,4,5])