def twice(number)
  string_number = number.to_s
  if string_number.length.even?
    first_half = string_number[0,string_number.length / 2]
    second_half = string_number[string_number.length / 2, string_number.length / 2]
    return number if first_half == second_half
    number * 2
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