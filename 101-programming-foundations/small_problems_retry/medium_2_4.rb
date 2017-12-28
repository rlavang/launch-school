def balanced?(string)
  bracket_string = string.split('').select do |char|
    char == ")" || char == "("
  end 
  balance = 0
  bracket_string.each do |bracket|
    balance += 1 if bracket == "("
    balance -= 1 if bracket == ")"
  end 
  if balance == 0
    true
  else
    false
  end
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false