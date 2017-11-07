require 'date'

def friday_13th(year)
  beginning_date = Date.new(year, 1, 1)  
  end_date = Date.new(year, 12, 31)
  counter = 0
  while beginning_date != end_date
    counter += 1 if beginning_date.friday? && beginning_date.day == 13
    beginning_date += 1
  end
  counter
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2