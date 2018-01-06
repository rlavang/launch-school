puts "Enter the 1st number: "
first_number = gets.chomp.to_i

puts "Enter the 2nd number: "
second_number = gets.chomp.to_i

puts "Enter the 3rd number: "
third_number = gets.chomp.to_i

puts "Enter the 4th number: "
fourth_number = gets.chomp.to_i

puts "Enter the last number: "
fifth_number = gets.chomp.to_i

puts "Enter the last number: "
last_number = gets.chomp.to_i

all_numbers = [first_number, second_number, third_number, fourth_number, fifth_number]

response = all_numbers.include?(last_number) ? "The number #{last_number} appears in #{all_numbers}" : "The number #{last_number} does not appear in #{all_numbers}"
puts response