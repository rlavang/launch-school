age = rand(20..200)
puts "What is your name?"
name = gets.chomp 
name = "Teddy" if name.strip == "" 
puts "#{name} is #{age} years old!"

