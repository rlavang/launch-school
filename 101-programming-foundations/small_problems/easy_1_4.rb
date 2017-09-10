vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

def count_occurrences(array)
  occurrences = {}

  array.each do |element|
    occurrences[element] = array.count(element)
    puts occurrences[element]
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

puts count_occurrences(vehicles)
=begin
def count_occurrences(vehicles)
  vehicle_occurences = {}
  vehicles.each do |vehicle|
    if vehicle_occurences[vehicle]
      vehicle_occurences[vehicle] +=1
    else
     vehicle_occurences[vehicle] = 1
   end
  end
  vehicle_occurences
end
puts count_occurrences(vehicles)
=end