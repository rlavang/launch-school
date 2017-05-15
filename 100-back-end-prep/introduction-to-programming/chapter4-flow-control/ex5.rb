def find_range number
  if number < 0
    puts "Number is below 0"
  elsif number <= 50
    puts "Number is between 0 and 50"
  elsif number <= 100
    puts "Number between 51 and 100"
  else
    puts "Number is greater than 100"
  end
end

def find_range_case number

  output = case 
    when number > 0 && number < 51
      "Number is between 0 and 50"
    when number > 50 && number < 101
      "Number is between 51 and 100"
    when number > 100
      "Number is greater than 100"
    else
      "Number is below 0"
   end

   puts output
end

puts "Provide a number between 0 and 100"
number = gets.chomp.to_i

find_range(number)
find_range_case(number)
