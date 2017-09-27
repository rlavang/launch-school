DAYS =  %w(Sunday Monday Tuesday Wednesday Thursday Friday Saturday)
SUNDAY = Time.new(2017, 9, 24)
def time_of_day(delta_minutes)
  delta_minutes = delta_minutes % (60 * 24)
  hours = delta_minutes / 60
  minutes = delta_minutes % 60
  format("%02d:%02d", hours, minutes)
end

# Further Exploration
def what_day(minutes_from_midnight)
  time = SUNDAY + (minutes_from_midnight * 60)
  "#{DAYS[time.wday]} #{'%02d' % time.hour}:#{'%02d' % time.min}"
end

p what_day(0) 
p what_day(-3)
p what_day(35)
p what_day(-1437) 
p what_day(3000) 
p what_day(800) 
p what_day(-4231) 

