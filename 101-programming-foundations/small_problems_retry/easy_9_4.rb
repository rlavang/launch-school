def sequence(number)
  sequence = []
  1.upto(number) do |num|
    sequence << num
  end
  sequence
end
p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]