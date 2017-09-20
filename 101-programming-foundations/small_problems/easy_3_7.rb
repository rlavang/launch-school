def oddities(array)
  odd_array = []
  array.each_with_index{|element, index| odd_array << element if (index + 1).odd?}
  odd_array
end

def oddities(array)
  odd_array = []
  for i in (0...array.length)
    odd_array <<  array[i] if (i+1).odd?
  end
  odd_array
end
p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
