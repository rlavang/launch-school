def multiply_all_pairs(list1, list2)
  multiplied_pairs = []
  list1.each do |element1|
    list2.each do |element2|
      multiplied_pairs << element1 * element2
    end
  end
  multiplied_pairs.sort
end 

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
