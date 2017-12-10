def fizzbuzz(start, last)
  fizzbuzz = []
  start.upto(last) do |counter|
    if counter % 3 == 0 && counter % 5 == 0
      fizzbuzz << "FizzBuzz"
    elsif counter % 3 == 0
      fizzbuzz << "Fizz"
    elsif counter % 5 == 0
      fizzbuzz << "Buzz"
    else
      fizzbuzz << counter
    end
  end  
  fizzbuzz.join(', ')
end

p fizzbuzz(1, 15)