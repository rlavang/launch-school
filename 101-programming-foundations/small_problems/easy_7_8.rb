def multiply_list(array1, array2)
  iterator = 0
  multiplied_array = []
  loop do
    multiplied_array << array1[iterator] * array2[iterator]
    iterator += 1
    break if iterator >= array1.size
  end
  multiplied_array
end

##One liner further exploration

def multiply_list(array1, array2)
  array1.zip(array2).map{|x| x.reduce(&:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]