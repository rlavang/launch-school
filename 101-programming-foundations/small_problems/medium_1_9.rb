def fibonacci(number)
  previous = 0
  total = 1
  (number-1).times do |sequence|
    total += previous
    previous = total - previous
  end
  total
end

def fibonacci(nth)
  first, last = [1,1]
  3.upto(nth) do 
    first, last = [last, first + last]
  end
  last
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501