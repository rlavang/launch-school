def buy_fruit(fruit_count)
  fruits = []
  fruit_count.each do |fruit|
    fruits.concat(Array.new(fruit[1],fruit[0]))
  end
  fruits
end

def buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end
p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]