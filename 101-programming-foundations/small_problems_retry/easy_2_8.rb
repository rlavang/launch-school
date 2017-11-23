puts "Please enter a number greater than 0: "
number = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
choice = gets.chomp.downcase

if choice == 's'
  sum = (1..number).reduce(:+)
  puts "The sum of the integers between 1 and #{number} is #{sum}."
elsif choice == 'p'
  product = (1..number).reduce(:*)
  puts "The product of the integers between 1 and #{number} is #{product}"
end
