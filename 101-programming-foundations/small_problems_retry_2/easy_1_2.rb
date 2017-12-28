def is_odd?(number)
  number % 2 == 1
end

def is_odd?(number)
  number.abs.remainder(2) == 1
end

puts is_odd?(2) == false   # => false
puts is_odd?(5) == true  # => true
puts is_odd?(-17) == true  # => true
puts is_odd?(-8) == false # => false
puts is_odd?(0) == false   # => false
puts is_odd?(7)  == true  # => true