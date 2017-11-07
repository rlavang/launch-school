vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

def count_occurrences(vehicles)
  vehicle_amount = {}

  vehicles.each do |vehicle| 
    if vehicle_amount[vehicle]
      vehicle_amount[vehicle] += 1
    else
      vehicle_amount[vehicle] = 1
    end
  end
  vehicle_amount.each {|vehicle, amount| puts "#{vehicle} => #{amount}"}
end


count_occurrences(vehicles)