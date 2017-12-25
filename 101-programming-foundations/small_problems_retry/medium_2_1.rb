list_of_words = []
File.open("medium_2_1.txt").each do |line|
  list_of_words.concat(line.chomp.split(' '))
end

sentence = []
longest = 0
list_of_words.each do |word|
  if word =~ /[.!?]/
    if sentence.length > longest
      longest = sentence.length + 1
    end
    sentence = []
  else
    sentence << word
  end
  longest
end

p longest