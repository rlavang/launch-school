def string_lengths(sentence)
  strings = sentence.split
  lengths = []
  counter = 1

  until counter == strings.size do
    word_length = strings[counter - 1].length
    puts word_length
    lengths.push(word_length)
    counter += 1
  end
  
  lengths
end
string_lengths('To be or not to be')