def xor? (arg1, arg2)
  return true if arg1 == true && arg2 != true
  return true if arg2 == true && arg1 != true 
  false
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false
