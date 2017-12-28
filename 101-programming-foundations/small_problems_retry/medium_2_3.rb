def letter_percentages(string)
  percentages = {lowercase: 0, uppercase: 0, neither: 0}
  string.split('').each do |char|
    if char =~ /[a-z]/
      percentages[:lowercase] += 1
    elsif char =~ /[A-Z]/
      percentages[:uppercase] += 1
    else 
      percentages[:neither] += 1
    end
  end
  percentages[:lowercase] = percentages[:lowercase] / string.length.to_f * 100
  percentages[:uppercase] = percentages[:uppercase] / string.length.to_f * 100
  percentages[:neither] = percentages[:neither] / string.length.to_f * 100
  percentages
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }