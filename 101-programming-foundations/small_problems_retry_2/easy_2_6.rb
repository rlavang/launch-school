1.upto(99) do |n|
  puts n if n.odd? 
end

(1..99).select{|n| n.odd?}