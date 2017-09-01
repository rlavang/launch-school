#For loop
=begin
def factors(number)
  divisors = []
  for dividend in 1..number
    divisors << number / dividend if number % dividend == 0
  end
  divisors
end
=end

#while loop
def factors(number)
  divisors = []
  dividend = number
  while dividend > 0
    divisors << number / dividend if number % dividend == 0
    dividend -=1
  end
  divisors
end

puts (factors(4))