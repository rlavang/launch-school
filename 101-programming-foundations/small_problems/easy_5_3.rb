def after_midnight(time)
  hours = time[0..1].to_i 
  minutes = time[3..4].to_i
  total_minutes = (hours * 60 + minutes) % 1440
end

def before_midnight(time)
  delta_minutes = 1440 - after_midnight(time)
  delta_minutes = 0 if delta_minutes == 1440
  delta_minutes
end


def after_midnight(time)
  hours, minutes =  time.split(':').map(&:to_i)
  midnight = Time.new(Time.new.year,Time.new.month, Time.new.day, 0, 0, 0)

  time_now = Time.new(Time.new.year, Time.new.month, Time.new.day, hours, minutes)
 
  return 0 if (time_now - midnight) / 60 == 1440
  (time_now - midnight) / 60 
end


def before_midnight(time)
  delta_minutes = 1440 - after_midnight(time)
  delta_minutes = 0 if delta_minutes == 1440
  delta_minutes
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
