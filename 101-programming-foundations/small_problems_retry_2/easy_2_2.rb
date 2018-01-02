puts "What is the length of the room in meters:"
length = gets.chomp.to_f

puts "What is the width of the room in meters:"
width = gets.chomp.to_f

area_in_meters = (length * width).round(2)
area_in_feet = (area_in_meters * 10.7639).round(2)

puts "The area of the room is #{sprintf("%.02f", area_in_meters)} square meters (#{sprintf("%.02f", area_in_feet)} square feet)"