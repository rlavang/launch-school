def oddities(array)
  array.select.with_index(1) do |n, index|
    index.odd? ? true : false
  end
end

p oddities([2, 3, 4, 5, 6]) == [2,4,6]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []