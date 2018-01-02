print "What is the bill? "
bill = gets.chomp.to_f

print "What is the percentge? "
tip_percentage = gets.chomp.to_f

tip = (bill * (tip_percentage / 100)).round(2)
total = (bill + tip).round(2)

puts "The tip is $#{sprintf("%.02f", tip)}"
puts "The total is $#{sprintf("%.02f", total)}"