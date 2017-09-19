def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num,num)
end

def power(base, power)
  total = 0
  if power == 0
    total = 1
  else
    total = base
    (power-1).times do
      total = multiply(base,total)
    end
  end
  total
end

#puts square(5) == 25
#puts square(-8) == 64

puts power(2,1)
puts power(2,0)
puts power(3,4)
