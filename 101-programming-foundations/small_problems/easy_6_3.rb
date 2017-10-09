=begin

-input
  - num
  - width of digits
  - num >= 2
-output
  - index starting 1 
  - index of first appearance of width of number=
- rules
  - Take an input num specifying number width and find out where in the Fib sequence a number with that width will appear

- Data Structure
  - Build an array of Fibonacci numbers
  - Create a counter

- Algorithm
  - Start Fib sequence at [1,1]
  - Loop until Fibonacci index is found
  - Every iteration, add new fib number
  - Calculate width of #, by converting it into string
  - If we found correct width, return counter + 1
  - Else just keep looping

My Initial Solution

def find_fibonacci_index_by_length(length)
  counter = 1
  fib_sequence = [1,1]

  loop do
    fib_sequence << fib_sequence[counter] + fib_sequence[counter-1]
    counter += 1
    p counter
    break if fib_sequence[counter].digits.length == length
  end
  counter + 1
end
=end

#Launch School Solution
def find_fibonacci_index_by_length(number_length)
  first = 1
  second = 1
  counter = 2
  loop do
    fibonacci = first + second
    counter += 1
    break if fibonacci.to_s.size >= number_length
    first = second
    second = fibonacci
  end
  counter
end

p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
