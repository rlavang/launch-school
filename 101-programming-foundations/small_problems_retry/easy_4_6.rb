def running_total(numbers)
  current_sum = 0
  numbers.map{|num| current_sum += num}
end

def running_total(numbers)
  sum = 0
  numbers.each_with_object([]) {|num, array|  array << sum += num}
end

def running_total(numbers)
  sum = 0
  numbers.inject{|sum, n| sum << sum + n}
end
p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []