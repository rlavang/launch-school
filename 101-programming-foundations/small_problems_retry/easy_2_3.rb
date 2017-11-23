print "What is the bill? "
bill = gets.chomp.to_f

print "What is the tip percentage? "
tip_percentage = gets.chomp.to_f / 100

tip_amount = (bill * tip_percentage).round(2)    
total = (bill + tip_amount).round(2)

puts "The the tip is $#{sprintf('%.02f', tip_amount)}"
puts "The total is $#{sprintf('%.02f', total)}"