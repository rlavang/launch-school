def halvsies(array)
  first_half = array.slice(0, (array.length / 2.0).ceil)
  second_half = array.slice(first_half.length, array.length - first_half.length)
  [first_half, second_half]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]