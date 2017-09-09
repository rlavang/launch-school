#What is the return value? Why?
[1,2,3].select do |num|
  num > 5
  'hi'
end

# => [1,2,3]
#Select is based off the truthiness value returned from the block. Since 'hi' is the last expression to be returned, it has 'truthiness' and will return true for every call, selecting every element in the array.