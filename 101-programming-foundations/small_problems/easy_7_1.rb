=begin
- input 
  - two arrays
- output
  - one array with each element of both arrays interleaves
- rules
  - can there be empty arrays
- data structures
  - two arrays
- algorithm
  - 

=end

def interleave(array1, array2)
  index = 0
  merged_array = []
  while index < array1.length
    merged_array << array1[index]
    merged_array << array2[index]
    index += 1
  end
  merged_array
end


#Bonus
def interleave(array1, array2)
  array1.zip(array2).flatten
end
p interleave([1, 2, 3], ['a', 'b', 'c'])  == [1, 'a', 2, 'b', 3, 'c']
