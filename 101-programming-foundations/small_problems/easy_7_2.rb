def letter_case_count(word)
  character_types = {lowercase: 0, uppercase: 0, neither: 0}
  word.chars.each do |character|
    if character.match(/[a-z]/)
      character_types[:lowercase] += 1
    elsif character.match(/[A-Z]/)
      character_types[:uppercase] += 1
    else
      character_types[:neither] += 1
    end
  end
  character_types
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }