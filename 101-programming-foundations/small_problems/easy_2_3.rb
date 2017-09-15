#Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. 
#The program must compute the tip and then display both the tip and the total amount of the bill.

puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip_percentage = gets.chomp.to_f
tip_factor = tip_percentage/100.0
tip = (tip_factor * bill)

total = tip + bill

puts "The tip is #{sprintf("%0.02f", tip)}"
puts "The total is #{sprintf("%0.02f", total)}"
