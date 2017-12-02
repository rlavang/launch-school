def crunch(word)
  no_duplicates = []
  word.chars.each_with_index do |char, index|
    no_duplicates << char if char != word[1 + index]
  end
  no_duplicates.join('')
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''