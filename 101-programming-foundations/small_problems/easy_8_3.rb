def substrings_at_start(string)
  list_of_substrings = []
  string.split('').each_with_index do |character, index| 
    list_of_substrings << string[0..index]
  end
  list_of_substrings
end

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
