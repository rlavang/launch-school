[1,2,3].reject do |num|
  puts num
end

# => [1,2,3] Every block value will be falsey, returning every element in the array.