LETTERS = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
def word_sizes(words)
  word_count = Hash.new(0)
  words.split(' ').each do |word|
    word.chars do |char|
      word.delete!(char) if char !~ /[a-z]/i
    end
    word_count[word.length] += 1
  end
  word_count
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}