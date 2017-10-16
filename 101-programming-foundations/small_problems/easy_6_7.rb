=begin
 
-input
  - array
  - empty array spits empty array
  - one element array 
- output
  - two arrays in an array
  - first array is first half of input (including additional element if input is odd length)
  - second array is second half of input

- rules
  - split array in half
  - odd array has additional element in first half

- data structures
  - array

=end

def halvsies(array)
  array_half = array.size / 2
  array_half += 1 if array.size.odd?
  p array[array_half...array.size]
  [array[0...array_half], array[array_half...array.size]]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3])  == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
