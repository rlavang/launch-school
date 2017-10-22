def fizzbuzz(start, final)
  output = [] 
  start.upto(final) do |number|
    if number % 3 == 0 && number % 5 == 0
      output << "FizzBuzz"
    elsif number % 3 == 0
      output << "Fizz"
    elsif number % 5 == 0
      output << "Buzz"
    else
      output << "#{number}"
    end
  end
  output.join(', ')
end

p fizzbuzz(1, 15)