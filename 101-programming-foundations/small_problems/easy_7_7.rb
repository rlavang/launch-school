def show_multiplicative_average(numbers)
  numbers.map!(&:to_f)
  sum = numbers.inject(&:*)
  average = sum / numbers.count
  puts "The result is #{sprintf('%.3f',average.round(3))}"
end
show_multiplicative_average([3, 5])
show_multiplicative_average([6])
show_multiplicative_average([2, 5, 7, 11, 13, 17])