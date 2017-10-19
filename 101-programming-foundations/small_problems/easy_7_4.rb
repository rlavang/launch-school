def swapcase(string)
  array_of_chars = string.chars.map do |char|   
    if char.match(/[A-Z]/)
      char.downcase 
    elsif char.match(/[a-z]/)
      char.upcase
    else
      char
    end
  end
  array_of_chars.join('')
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
