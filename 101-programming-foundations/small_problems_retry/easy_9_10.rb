def buy_fruit(fruits)
  groceries = []
  fruits.each do |fruits|
    amount = fruits[1]
    fruit = fruits[0]
    1.upto(amount){|_| groceries << fruit}
  end
  groceries
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) == ["apples", "apples", "apples", "orange", "bananas","bananas"]