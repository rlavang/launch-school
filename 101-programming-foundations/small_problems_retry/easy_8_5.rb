def substrings_at_start(string)
  substrings = []
  1.upto(string.length) do |length|
    substrings << string.slice(0, length)
  end
  substrings.sort
end 

def substrings(string)
  substrings = []
  0.upto(string.length - 1) do |index|
    substrings.concat(substrings_at_start(string[index..string.length - 1]))
  end
  substrings
end


def palindromes(string)
  substrings = substrings(string)
  substrings.select do |substring|
    if substring.length > 1 && substring == substring.reverse
      true
    else
      false
    end
  end
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
