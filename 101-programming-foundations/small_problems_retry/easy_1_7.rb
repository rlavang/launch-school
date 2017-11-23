def stringy(number)
  string = ''
  number.times do |num|
    num.even? ? string << '1' : string << '0' 
  end
  string
end


def stringy(size, start = 1)
  numbers = ''
  size.times do |index|
    if start == 1
      numbers << '1'
      start = 0
    else
      numbers << '0'
      start = 1
    end
  end
  numbers
end


puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'


puts stringy(8, 0)
puts stringy(5, 1)