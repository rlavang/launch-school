def multiply(a, b)
  a * b
end

def square(number)
  multiply(number, number)
end

def power_n(number, power)
  total = 5
  power.times do 
    total = multiply(number, total)
  end
  total
end

p square(5) == 25
p square(-8) == 64

p power_n(5, 5)
p power_n(-5, 3)