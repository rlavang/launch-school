NUMBERS = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9}

def string_to_integer(string_number)
  string_number.chars.map{|num| NUMBERS[num]}.reduce{|sum, n| sum * 10 + n}
end

def string_to_signed_integer(number)
  if number[0] == '-'
    string_to_integer(number[1..-1]) * -1
  elsif number[0] == '+'
    string_to_integer(number[1..-1])
  else
    string_to_integer(number)
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100