def time_of_day(delta_minutes)
  delta_minutes = delta_minutes % (60 * 24)
  hours = delta_minutes / 60
  minutes = delta_minutes % 60
  format("%02d:%02d", hours, minutes)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
