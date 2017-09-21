def running_total(array)
  sum = 0
  array.map do |num|
    sum += num
  end
end

def running_total(array)
  sum = 0
  array.each_with_object([]) do |index, array|
    sum += index
    array << sum
  end
end

def running_total(array)
  summed_array = []
  array.map do |num|
    summed_array << num
    summed_array.reduce(:+)
  end
end
p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
