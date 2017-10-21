def penultimate(string)
  string.split[-2]
end

## Middle word
def penultimate_middle(string)
  return '' if string.empty?
  words = string.split
  middle = ''
  if words.length.odd?
    middle = "#{words[words.length / 2]}"
  else
    middle = "#{words[(words.length / 2) - 1]} #{words[words.length / 2]}"
  end
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'

p penultimate_middle('Launch School is great!')
p penultimate_middle('last word')
p penultimate_middle(' ')
p penultimate_middle('one')