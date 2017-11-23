def after_midnight(time)
  hours = time[0..1].to_i
  minute = time[3..4].to_i
  if hours == 24 
    return 0
  end
  total_minutes = hours * 60
  total_minutes += minute
  total_minutes
end

def before_midnight(time)
  hours = time[0..1].to_i
  minute = time[3..4].to_i
  if hours == 24
    return 0
  end
  total_minutes = hours * 60 - minute
end

p after_midnight('00:00') == 0
p after_midnight('12:34') == 754
p after_midnight('24:00') == 0

p before_midnight('00:00') == 0
p before_midnight('12:34') == 686
p before_midnight('24:00') == 0