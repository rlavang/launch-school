#Furter Exploration
print "What is your name? "
name = gets.chomp!


if name [-1] == '!'
  name.chop!
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}"
end
#My solution
=begin
print "What is your name? "
name = gets.chomp
if name[-1] == '!'
  puts "HELLO #{name.upcase[0..-2]}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
=end
