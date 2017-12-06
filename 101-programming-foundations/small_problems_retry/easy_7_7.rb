def show_multiplicative_average(numbers)
  average = numbers.reduce(&:*) / (numbers.length.to_f)
  puts "The result is %.03f" % average
end

show_multiplicative_average([6])
show_multiplicative_average([3, 5])
show_multiplicative_average([2, 5, 7, 11, 13, 17])
