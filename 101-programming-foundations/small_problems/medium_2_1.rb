list_of_words = []
File.open("medium_2_1_2.txt").each do |line|
  list_of_words.concat(line.chomp.split(' '))
end

word_count = {}
counter = 0
list_of_words.each do |word|
  counter +=1
  if word =~ /[.!?]/
    word_count[word] = counter
    counter = 0
  end
end

p word_count.values.max