print "Please write the word or multiple words: "
input = gets.chomp.delete(' ')

count = input.size
#count = input.chars.count{|char| char =~ /[a-z]/i}
puts "There are #{count} characters in \"#{input}\""