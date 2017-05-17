h1 = {a: "a", b: "b", c: "c"}
h2 = {d: "d", e: "e"}

h3 = h1.merge(h2)
puts "Newly assigned hash is #{h3}"
puts "Original h1 hash is #{h1}"
puts "Original h2 has is #{h2}"

puts "----"
h3 = h1.merge!(h2)

puts "Newly assigned hash is #{h3}"
puts "Original h1 hash is #{h1}"
puts "Original h2 has is #{h2}"


#With merge!, the original caller is mutated
