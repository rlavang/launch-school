print "Please write word or multiple words: "
words = gets.chomp
words_list = words.split(' ')
total_characters = words_list.sum{|word| word.length}
puts "There are #{total_characters} characters in \"#{words}\"."
