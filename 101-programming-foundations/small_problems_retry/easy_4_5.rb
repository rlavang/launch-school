def multisum(num)
  multiples = []
  1.upto(num) do |n|
    if n % 3 == 0 || n % 5 == 0
      multiples << n
    end
  end
  multiples.sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168

def multisum(num)
  (1..num).select{|n| n % 3 == 0 || n % 5 == 0}.reduce(:+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
