def swap(phrase)
  reversed_phrase = phrase.split(' ').each{|word| word[0], word[-1] = word[-1], word[0] }
  reversed_phrase.join(' ')
end

p swap('Oh what a wonderful day it is') = 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'