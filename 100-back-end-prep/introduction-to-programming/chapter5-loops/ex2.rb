loop do
  puts "Please provide an input. Type in \"STOP\" without quotations to quit."
  input = gets.chomp 
  if input == "STOP"
    break
  end
  puts "You typed in, #{input}"
end
