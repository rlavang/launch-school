def century(year)
  century = (year / 100) + 1
  century -= 1 if year % 100 == 0

  return "#{century}th" if [11,12,13].include?(century % 100)

  last_year = century % 10
  case last_year
  when 1
    "#{century}st"
  when 2
    "#{century}nd"
  when 3
    "#{century}rd"
  else
    "#{century}th"
  end

end


p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'