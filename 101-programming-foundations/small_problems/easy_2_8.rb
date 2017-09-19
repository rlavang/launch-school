def compute_sum(num)
  (1..num).inject(:+)
end

def compute_product(num)
  (1..num).inject(:*)
end

puts "Please enter an integer greater than 0:"
num = gets.chomp.to_i

while num <= 0
  puts "Please enter an integer greater than 0:"
  num = gets.chomp.to_i
end

loop do
  puts "Enter 's' to compute the sum, 'p', to compute the product."
  decision = gets.chomp
  if decision == 's'
    sum = compute_sum(num)
    puts "The sum of the integers between 1 and #{num} is #{sum}."
    break
  elsif decision == 'p'
    product = compute_product(num)
    puts "The product of the integers between 1 and #{num} is #{product}."
    break
  else
    puts "Unknown operation selected. Try again."
  end
end
