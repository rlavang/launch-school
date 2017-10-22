def double_consonants(string)
  doubled_string = ''
  string.split('').each do |char|
    if char =~ /[b-df-hj-np-tv-z]/i
      doubled_string << char * 2 
    else
      doubled_string << char
    end
  end
  doubled_string
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""