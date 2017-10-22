def substrings_at_start(string)
  list_of_substrings = []
  string.split('').each_with_index do |character, index| 
    list_of_substrings << string[0..index]
  end
  list_of_substrings
end

def substrings(string)
  all_substrings = []
  string.split('').each_with_index do |_, index|
    all_substrings << substrings_at_start(string[index...string.length])
  end
  all_substrings.flatten
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]