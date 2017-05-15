puts "Provide a number between 0 and 100"
input = gets.chomp.to_i

output = case 
 when input > 0 && input < 51
    "Number is between 0 and 50"
 when input > 50 && input < 101
    "Number is between 51 and 100"
 when input > 100
    "Number is greater than 100"
 else
    "Number is below 0"
end

puts output
