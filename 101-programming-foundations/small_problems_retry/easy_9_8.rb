def sequence(count, first)
  sequence = []
  1.upto(count) do |n|
    sequence << first * n
  end
  sequence
end

def sequence(count, first)
  (1..count).map{|n| n * first}
end

p sequence(5, 1) == [1,2,3,4,5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []