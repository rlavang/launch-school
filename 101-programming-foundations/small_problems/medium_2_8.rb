def featured(number)
  while true
    number +=1
    if number % 7 == 0 && number.odd? && number.to_s.chars.uniq.length == number.to_s.length
      return number
    elsif number.to_s.chars.length > 10
      false
    end
  end
    number ? number: "There is no possible number that fulfills those requirements."
end


p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements