def multiple?(num, divisor)
  num % divisor == 0
end
=begin
def multisum(num)
  sum = 0
  1.upto num do |index|
    sum += index if multiple?(index, 3) || multiple?(index, 5) 
  end
  sum
end
=end

def multisum(max_num)
  (1..max_num).inject(0) do |sum, num|
    multiple?(num, 3) || multiple?(num, 5) ? sum + num : sum
  end
end
p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
