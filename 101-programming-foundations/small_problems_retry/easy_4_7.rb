NUMBERS = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9}

def string_to_integer(string_number)
  string_number.chars.map{|num| NUMBERS[num]}.reduce{|sum, n| sum * 10 + n}
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570


HEXADECIMAL_NUMBERS = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9, 'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, 'E' => 14, 'F' => 15}

def hexadecimal_to_integer(hexadecimal)
  hexadecimal.chars.map{|num| HEXADECIMAL_NUMBERS[num]}.reduce{|sum, n| sum * 16 + n}
end

p hexadecimal_to_integer('E7A9')
