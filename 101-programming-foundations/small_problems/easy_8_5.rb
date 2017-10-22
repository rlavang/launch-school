def substrings_at_start(string)
  list_of_substrings = []
  string.split('').each_with_index do |character, index| 
    list_of_substrings << string[0..index]
  end
  list_of_substrings
end

def substrings(string)
  all_substrings = []
  string = string.split('').select{|char| char =~ /[a-z]/i }.join('') ##further exploration to only create string with non-alphanumeric characters
  string.split('').each_with_index do |_, index|
    all_substrings << substrings_at_start(string[index...string.length])
  end
  all_substrings.flatten
end

def palindromes(string)
  possible_words = substrings(string)
  palindromes = []
  possible_words.each do |word|
    palindromes << word if word == word.reverse && word.size > 1
  end
  palindromes
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye')
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]