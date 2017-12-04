def interleave(array1, array2)
  counter = 0
  merged_array = []
  while counter < array1.length
    merged_array << array1[counter]
    merged_array << array2[counter]
    counter+=1
  end
  merged_array
end

def interleave(array1, array2)
  array1.zip(array2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']