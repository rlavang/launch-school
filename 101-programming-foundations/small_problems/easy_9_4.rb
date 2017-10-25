def sequence(number)
  return (1..number).to_a if number > 0
  (number..-1).to_a
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]

p sequence(-1)
p sequence(-3)
