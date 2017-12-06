def penultimate(words)
  words.split(' ')[-2]
end

def middle_penultimate(words)
  words_list = words.split(' ')

  half = (words_list.length / 2.0).floor
  if words_list.length.even?
    words_list.slice(half-1, 2).join(' ')
  else
    words_list.slice(half, 1).join(' ')
  end
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'




p middle_penultimate('Launch School is great!')
# will return "School is"
p middle_penultimate('key')
# => "key"
p middle_penultimate('Launch School teaches good fundamental programming skills.')
# => "good"