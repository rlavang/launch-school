def crunch(string)
  string = string.split('')
  remapped_string = []
  string.each_with_index do |char,index| 

    if string[index+1] == char
      next
    end
    remapped_string << char
  end
  remapped_string.join('')
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
