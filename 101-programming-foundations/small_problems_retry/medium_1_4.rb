def initialize_lights(number_of_lights)
  lights = Hash.new
  1.upto(number_of_lights) do |number|
    lights[number] = "off"
  end 
  lights
end

def switch_lights(lights, nth_light)
  1.upto(lights.length) do |index|
    if index % nth_light == 0
      lights[index] = (lights[index] == "on") ? "off" :  "on"
    end
  end
  lights
end 

def lights_left_on(lights)
  lights.select{|light, status| status == "on" }.keys
end

def n_lights(n)
  lights = initialize_lights(n)
  1.upto(n) do |nth_light|
    lights = switch_lights(lights, nth_light)
  end
  lights_left_on(lights)
end

p n_lights(5)
p n_lights(10)
p n_lights(1000)