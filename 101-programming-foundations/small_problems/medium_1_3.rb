def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, size)
  number_array = number.to_s.chars
  number_array[-size..-1] = rotate_array(number_array[-size..-1])
  number_array.join.to_i
end


def max_rotation(number)
  number.to_s.length.downto(1) {|i| number = rotate_rightmost_digits(number, i)}
  number
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845