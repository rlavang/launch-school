#Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

def digit_list(number)
  number = number.to_s
  number = number.split('')
  number.map! { |number| number.to_i }
end

def digit_list(number)
  digits = []
  loop do
    number, remainder = number.divmod(10)
    puts "Number: #{number} Div: #{remainder}"
    digits.unshift(remainder)
    puts digits
    break if number == 0
  end
  digits
end


puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true