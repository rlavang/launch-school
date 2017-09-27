=begin
input
  - string
  - one or more space seperated words
  
output
  - hash 
  - number of words of different size
  - {word_size : count of word_size}

understanding the problem
  - Take in a string of one or more space seperated words
  - Count the amount of words of different sizes
  - don't count spaces
  - empty string returns empty hash

algorithim
  - convert string into an array of words
  - iterate over array
  - obtain length of words
  - store length in hash
  - initialize count to 1, otherwise
  - increment count by 1
=end

def word_sizes(words)
  word_tracker = {}
  words.split(' ').each do |word|
    word_length = word.size
    if !word_tracker.has_key?(word_length)
      word_tracker[word_length] = 1
    else
      word_tracker[word_length] +=1
    end
  end
  word_tracker
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}