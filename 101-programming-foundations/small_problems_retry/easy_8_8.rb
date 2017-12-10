def double_consonants(string)
  double_string = []
  string.each_char do |char|
    if char !~ /[a-df-hj-np-tv-z]/i
      double_string << char
    else
      double_string << char * 2
    end 
  end
  double_string.join()
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh" 
p double_consonants('') == ""