def letter_percentages(string)
  types_of_chars = {uppercase: 0.0, lowercase: 0.0, neither: 0.0}

  string.split('').each do |character|
    if character =~ /[A-Z]/
      types_of_chars[:uppercase] += 1
    elsif character =~ /[a-z]/
      types_of_chars[:lowercase] += 1
    else
      types_of_chars[:neither] += 1
    end
  end
  types_of_chars[:uppercase] = (types_of_chars[:uppercase] / string.length) * 100
  types_of_chars[:lowercase] = (types_of_chars[:lowercase] / string.length) * 100
  types_of_chars[:neither] = (types_of_chars[:neither] / string.length) * 100

  types_of_chars
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }