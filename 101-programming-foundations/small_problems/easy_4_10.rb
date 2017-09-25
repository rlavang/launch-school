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
def signed_integer_to_string(number)
  return '0' if number == 0
  symbol =  number < 0 ? '-' : '+'
  symbol + integer_to_string(number.abs)
end
p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
