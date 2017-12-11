def swap_name(name)
  swapped_name = []
  name.split.each {|n| swapped_name.unshift(n)}
  swapped_name.join(', ')
end

def swap_name(name)
  name.split.reverse.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'