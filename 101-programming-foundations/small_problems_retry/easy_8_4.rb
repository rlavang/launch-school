def substrings_at_start(string)
  substrings = []
  1.upto(string.length) do |length|
    substrings << string.slice(0, length)
  end
  substrings.sort
end 

def substrings(string)
  substrings = []
  0.upto(string.length - 1) do |index|
    substrings.concat(substrings_at_start(string[index..string.length - 1]))
  end
  substrings
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]