def palindrome?(word)
  word == word.reverse
end


p palindrome?('madam') == true
p palindrome?(['m','a','d','a','m'])
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true
p palindrome?(['3','5','6','6','5','3'])