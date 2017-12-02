def center_of(word)
  center_index = word.length / 2
  if word.length.odd?
    center = word[center_index]
  else
    center = word[center_index - 1..center_index]
  end
  center
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'