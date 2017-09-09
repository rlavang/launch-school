#Turn this array into a hash where the names are the keys and the values are the positions in the array.

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstone_hash = {}
flintstones.each_with_index() do |value, index|
 flintstone_hash[value] = index 
end

p flintstone_hash
