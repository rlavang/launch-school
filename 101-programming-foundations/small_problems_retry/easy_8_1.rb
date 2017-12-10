def sum_of_sums(nums)
  total = 0
  set_of_nums = []
  nums.each do |num|
    set_of_nums << num
    total += set_of_nums.inject(:+)
  end
  total
end

def sum_of_sums(numbers)
  total = 0
  1.upto(numbers.size) do |count|
    total += numbers.slice(0, count).reduce(:+)
  end
  total
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35