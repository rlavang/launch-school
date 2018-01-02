def prompt(message)
  puts ">> #{message}"
end

prompt("Please enter an integer greater than 0:")
number = gets.chomp.to_i

prompt("Enter 's' to compute the sum, 'p' to compute the product.")
command = gets.chomp.downcase

if command == 's'
  sum = (1..number).reduce(:+)
  prompt "The sum of the integers between 1 and #{number} is #{sum}"
elsif command == 'p'
  product = (1..number).reduce(:*)
  prompt "The product of the integers between 1 and #{number} is #{product}"
else
  prompt("Incorrect command.")
end
