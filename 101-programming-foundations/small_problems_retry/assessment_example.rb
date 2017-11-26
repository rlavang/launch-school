##1a
def prime(number)
  if number == 1
    return false
  end
  2.upto(number-1) do |num|
    return false if number % num == 0
  end
  true
end

p prime(7)
p prime(5)
p prime(18)
p prime(1)
p prime(3)
p prime(4)