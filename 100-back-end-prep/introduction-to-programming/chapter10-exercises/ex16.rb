a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
   
a.map! do |value|
  value.split(' ')
end
a.flatten!
p a
