def repeater(word)
  repeated_word = ''
  word.chars.each do |char|
    repeated_word << char * 2
  end
  repeated_word
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''