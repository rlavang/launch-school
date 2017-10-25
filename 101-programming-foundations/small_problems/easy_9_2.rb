def twice(number)
  string_number = number.to_s
  left_half = string_number[0, string_number.size / 2] 
  right_half = string_number[(string_number.size / 2)..string_number.size]   
  if left_half == right_half
    number
  else
    number * 2
  end
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
