def stringy(number)
  binary = ""
  number.times do |n|
    if n.even?
      binary << '1'
    else
      binary << '0'
    end
  end
  binary
end

def stringy(size, start=1)
  binary = ""
  if start != 1
    start = 0
    second = 1
  else
    second = 0
  end

  size.times do |index|
    number = index.even? ? start : second
    binary << number.to_s 
  end
  binary
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

puts stringy(6,1)