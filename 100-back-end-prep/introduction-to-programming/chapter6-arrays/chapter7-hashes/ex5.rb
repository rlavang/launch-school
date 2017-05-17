#Use the has_value? method on the hash object to find a specific key for a value.

hash = {a: 'a', b:'b', c:'c'}

puts hash.has_value?('c')
puts hash.has_value?('d')
