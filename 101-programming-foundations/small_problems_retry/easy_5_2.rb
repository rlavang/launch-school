def time_of_day(minutes)
  total_hours = minutes / 60
  hour = total_hours % 24
  minutes = minutes - (total_hours * 60)
  hour = 24 - hour if minutes < 0  
  "%02d:%02d" % [hour, minutes]
end
 
def time_of_day(minutes)
  time = Time.new(2017, 1, 1, 0, 0 , 0)
  time +=  minutes * 60
  hour = time.hour
  minutes = time.min
  "%02d:%02d" % [hour, minutes]

end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"