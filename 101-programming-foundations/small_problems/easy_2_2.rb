=begin
Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.

Note: 1 square meter == 10.7639 square feet

Do not worry about validating the input at this time.

=end
puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

area_in_meters = length * width.round(2)
area_in_feet = (area_in_meters * 10.7639).round(2)
puts "The area of the room is #{area_in_meters} (#{area_in_feet} square feet)"
