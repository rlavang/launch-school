arr.delete_if do |item|
  item.start_with?('s')
end
p arr
arr.delete_if do |item|
  item.start_with?('s', 'w')
end

p arr
