def find_fibonacci_index_by_length(number)
  sequence = [1,1]
  index = 1
  loop do
    sequence << sequence[index] + sequence[index-1]
    index += 1
    if sequence.last.to_s.length == number
      return index + 1
    else
      next
    end
  end
end

p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
