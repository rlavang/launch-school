def check_sequence word 
  if word =~ /lab/ 
    return true
  else
    return false
  end
end

puts check_sequence("laboratory")
puts check_sequence("experiment")
puts check_sequence("Pans Labyrinth")
puts check_sequence("elaborate")
puts check_sequence("polar bear")
