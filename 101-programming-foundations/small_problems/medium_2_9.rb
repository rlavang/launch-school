def bubble_sort!(array)
 
loop do
  sorted = 0
   index = 1
  while index < array.length do
    if array[index-1] > array[index]
      temp = array[index-1]
      array[index-1] = array[index]
      array[index] = temp
    else
      sorted += 1
    end
    index += 1
    return array if sorted == array.length - 1
  end
end
end
array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)