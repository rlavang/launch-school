def swap(string)
  string = string.split(' ').map do |word|
    first_letter = word[0]
    word[0] = word[-1]
    word[-1] = first_letter
    word
  end
  string.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

=begin Further Exploration
def swap_first_last_characters(a, b)
  a, b = b, a
end

def swap(words)
  result = words.split.map do |word|
    a, b = swap_first_last_characters(word[0], word[-1])
    word[0] = a
    word[-1] = b
    word
  end
  result.join(' ')
end
p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
=end
