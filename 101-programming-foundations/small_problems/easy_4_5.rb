def multiple?(num, divisor)
  num % divisor == 0
end

def multisum(num)
  sum = 0
  1.upto num do |index|
    sum += index if multiple?(index, 3) || multiple?(index, 5) 
  end
  sum
end
p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
