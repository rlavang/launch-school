def rotate_array(array)
  array[1..-1] + array[0]
end

def rotate_rightmost_digits(number, position)
  number = number.to_s
  number[-position..-1] = rotate_array(number[-position..-1])
  number.to_i
end


def max_rotation(number)
  length = number.to_s.length
  length.downto(2) do |position|
    number = rotate_rightmost_digits(number, position)
  end
  number
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845