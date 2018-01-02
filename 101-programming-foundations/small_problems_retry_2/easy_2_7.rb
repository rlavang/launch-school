1.upto(99) do |n|
  puts n if n.even?
end

(1..99).select(&:even?)