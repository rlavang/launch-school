def swapcase(string)
  string = string.chars.map do |char|
    if char == char.upcase
      char.downcase
    else
      char.upcase
    end
  end
  string.join()
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'