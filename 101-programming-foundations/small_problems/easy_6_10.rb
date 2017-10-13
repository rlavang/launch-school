def triangle(number)
  number.times do |iteration|
    iteration += 1
    space = " " * (number - iteration)
    star = "*" * iteration
    puts "#{space}#{star}"
  end
end

def inverse_triangle(number)
 number.times do |iteration|
    space = " " * (iteration)
    star = "*" * (number - iteration)
    puts "#{space}#{star}"
  end
end  

puts triangle(5)

puts triangle(9)

puts inverse_triangle(5)
