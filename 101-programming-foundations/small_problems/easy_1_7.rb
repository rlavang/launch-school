#Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

def stringy(number)
  alternating_string = ''
  for i in (0...number)
    if i % 2 == 0
      alternating_string << '1'
    else 
      alternating_string << '0'
    end
  end
  alternating_string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
    
=begin
# Launch School Solution

def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end
end
