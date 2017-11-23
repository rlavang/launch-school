def xor?(argument1, argument2)
  return true if (argument1 == true && argument2 == false) || (argument1 == false && argument2 == true)
  false
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false