print "What is your age? "
age = gets.chomp.to_i

print "At what age would you like to retire? "
retirement_age = gets.chomp.to_i

current_year = Time.new.year
retirement_year = (retirement_age - age) + current_year
years_left = retirement_age - age

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You only have #{years_left} of work to go!"