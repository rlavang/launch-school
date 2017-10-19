def word_cap(words)
  words.split.map{|word| word.capitalize}.join(' ')
end

def word_cap(words)
  return_value = words.split.each do |word|
    word[0] = word[0].upcase
    word[1..-1] = word[1..-1].downcase
  end
  return_value.join(' ')
end

def word_cap(words)
  words.split.map(&:downcase).each{|word| word[0] = word[0].upcase}.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'