STRING_NUMBERS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  converted_number = ''
  loop do
    number, remainder = number.divmod(10)
    converted_number.prepend(STRING_NUMBERS[remainder])
    break if number == 0
  end
  converted_number
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
