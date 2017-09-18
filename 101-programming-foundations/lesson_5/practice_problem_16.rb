
def generate_uuid
  characters = []
  (0..9).each{|value| characters << value.to_s}
  ('a'..'f').each{|value| characters << value}

  format = [8,4,4,4,12]
  uuid = ''
  format.each_with_index do |value,index|
    value.times do
      puts characters.sample
      uuid << characters.sample
      
    end
    uuid << '-' unless index >= format.length-1
  end
  uuid
end  
p generate_uuid