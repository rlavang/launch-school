def substrings_at_start(string)
  substrings = []
  1.upto(string.length) do |length|
    substrings << string.slice(0, length)
  end
  substrings.sort
end 

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']