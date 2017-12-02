def reverse_array(array)
  index = 0
  while index < (array.length / 2)
    array[index], array[-index - 1] = array[-index -1], array[index]
    index +=1
  end
  array
end

list = [1,2,3,4]
p reverse_array(list)

list = %w(a b c d e)
p reverse_array(list)