def center_of(string)
  is_even = string.size.even?
  half_index = string.size / 2
  if is_even
    string[half_index-1..half_index]
  else
    string[half_index]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'