print "What is your age? "
age = gets.chomp.to_i

print "At what age would you like to retire? "
retirement_age = gets.chomp.to_i

years_until_retirement = retirement_age - age
current_year = Time.new.year
retirement_year = years_until_retirement + current_year

puts "It's #{Time.new.year}. You will retire in #{retirement_year}"
puts "You only have #{years_until_retirement} year of work to go!"
