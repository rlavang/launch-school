def sum_of_sums(numbers)
  numbers_to_sum = []
  numbers.each.with_index do |_, index|
    numbers_to_sum << numbers.slice(0..index)
  end
  numbers_to_sum.flatten.inject(&:+)
end

p sum_of_sums([3, 5, 2]) == 21
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35