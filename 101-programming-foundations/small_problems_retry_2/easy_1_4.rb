vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']
def count_occurrences(vehicles)
  vehicle_count = Hash.new(0)
  vehicles.each do |vehicle|
    vehicle_count[vehicle] += 1
  end
  
  vehicle_count.each do |vehicle, occurence|
    puts "#{vehicle} => #{occurence}"
  end
end

count_occurrences(vehicles)
