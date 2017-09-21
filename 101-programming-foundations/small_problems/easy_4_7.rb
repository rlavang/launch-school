def string_to_integer(string)
  look_up_numbers = {'0' => 0,'1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9}
  number_list = []
  string.split('').each do |number|
    number_list << look_up_numbers[number]
  end
  
  value = 0
  number_list.each do |num| 
    value = 10 * value + num
  end
  value

end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
