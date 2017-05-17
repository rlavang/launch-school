hash = {a: "A", b:"B", c:"C"}

hash.each_key do |key|
  puts key
end

hash.each_value do |value|
  puts value
end

hash.each do |key, value|
  puts "#{key}, #{value}"
end

