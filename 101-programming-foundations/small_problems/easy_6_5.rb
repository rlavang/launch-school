def reverse(array)
  counter = array.length - 1
  reversed_array = []
  while counter >= 0
    reversed_array << array[counter]
    counter -= 1
  end
  reversed_array
end

def reverse(array)
  array.each_with_object([]){|element, array| array.unshift(element)}
end

def reverse(array)
  array.inject([]){|acc, ele| acc.unshift(ele) }
end



p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b c d e)) == %w(e d c b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 2, 3]                      # => [1, 2, 3]
p new_list = reverse(list)              # => [3, 2, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 2, 3]                     # => true
p new_list == [3, 2, 1]                 # => true