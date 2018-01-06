print "Please write word or multiple words: "
input = gets.chomp

length_of_input = input.chars.count {|c| c != " "}

puts "There are #{length_of_input} characters in \"#{input}\""