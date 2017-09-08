def multiply(number_list, multiply_by)

  counter = 0
  multiplied_list = []

  loop do
    break if counter == number_list.size

    multiplied_list << number_list[counter] * multiply_by
    counter +=1
  end

  multiplied_list
end

my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]