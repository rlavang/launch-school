require "pry"

counter = 0
loop do |variable|
  counter += 1
  puts 'hello'
  yolo = 'yolo'
  binding.pry
  break if counter == 3

end