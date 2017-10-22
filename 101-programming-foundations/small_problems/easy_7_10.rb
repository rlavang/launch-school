def penultimate(string)
  string.split[-2]
end

## Middle word
def penultimate_middle(string)
  return '' if string.empty?
  array_of_words = string.split
  if array_of_words.size.odd?
    array_of_words[array_of_words.size / 2]
  else
    "#{array_of_words[(array_of_words.size / 2) - 1]} #{array_of_words[array_of_words.size / 2]}"
  end
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'

p penultimate_middle('Launch School is great!')
p penultimate_middle('Launch School is great ,ma!')
p penultimate_middle('last word')
p penultimate_middle(' ')
p penultimate_middle('one')