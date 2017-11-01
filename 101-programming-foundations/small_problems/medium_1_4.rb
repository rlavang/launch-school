def initialize_lights(number_of_lights)
  lights = Hash.new
  1.upto(number_of_lights){|light| lights[light] = false}
  lights
end

def on_lights(lights)
  lights.select { |light, status| status == true}.keys

end

def toggle_nth_light (lights, nth)
  lights.each do |position, status|
    if position % nth == 0
      lights[position] = (status == true) ? false : true
    end
  end
  lights
end

def toggle_lights(number_of_lights)
  lights = initialize_lights(number_of_lights)

  1.upto(number_of_lights) do |position|
    toggle_nth_light(lights, position)
  end
  on_lights(lights)
end

p toggle_lights(5)
p toggle_lights(10)