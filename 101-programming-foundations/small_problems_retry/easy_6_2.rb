def remove_vowels(words)
  words.map do |word|
    word.chars.select{|char| char !~ /[aeiou]/i}.join('')
  end
end

def remove_vowels(words)
  words.map{|word| word.delete('aeiouAEIOU')}
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']