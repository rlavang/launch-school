def multiply(number1, number2)
  number1 * number2
end

def square(number)
  number ** 2
end

p square(5) == 25
p square(-8) == 64

def power_to(number, n)
  total = number
  (n-1).times do 
    total = multiply(total, number)
  end
  total 
end


p power_to(3, 3)
p power_to(5, 6)
p power_to(1, 2)
p power_to(2, 2)
p power_to(3, 1)