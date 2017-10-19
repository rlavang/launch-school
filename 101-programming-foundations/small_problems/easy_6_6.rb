#Launch School Solution
def merge(array1, array2)
  array1 | array2
end

#My solution
def merge(array1, array2)
  array1.concat(array2).uniq
end

p merge([1, 3, 5], [3, 6, 9]) 
