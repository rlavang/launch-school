numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

#1
#2
#3
#4
#=> nil

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

#1
#2
#=> [1,2]
