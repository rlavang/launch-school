def repeater(string)
  repeat = ""
  string.chars.each do |char|
    repeat << char * 2
  end
  repeat
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''