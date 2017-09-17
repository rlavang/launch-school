arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

modified_arr = arr.map do |hash|
  temp_hash = {}
  hash.each do |key, value|
    value += 1
    temp_hash[key] = value
  end
  temp_hash
end

p modified_arr