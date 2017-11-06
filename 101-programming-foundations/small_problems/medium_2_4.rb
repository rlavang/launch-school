def balanced?(string)
  balance = 0

  string.split('').each do |char|
    balance +=1 if char == '(' 
    balance -=1 if char == ')'
    return false if balance < 0
  end

  balance == 0 ? true : false
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false