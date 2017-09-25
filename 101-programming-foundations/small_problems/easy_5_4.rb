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
