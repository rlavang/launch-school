def multiply_all_pairs(array1, array2)
  multiplied_array = []
  array1.each do |element1|
    array2.each do |element2|
      multiplied_array << element1 * element2
    end
  end
  multiplied_array.sort
end

##Shortened version
def multiplay_all_pairs(array1, array2)
  array1.product(array2).map{|element| element.reduce(&:*)}.sort
end
p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
