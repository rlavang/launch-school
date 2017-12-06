def multiply_list(list1, list2)
    multiplied_list = []
    list1.each_with_index {|element, index| multiplied_list << element * list2[index]}
    multiplied_list
end

def multiply_list(list1, list2)
  c = []
  list1.zip(list2) {|a, b| c << a * b}
  c
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
