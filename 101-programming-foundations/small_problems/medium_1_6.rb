NUMBERS = {'one' => 1, 'two'=> 2, 'three' => 3, 'four' => 4, 'five' => 5, 'six' => 6, 'seven' => 7, 'eight' => 8, 'nine' => 9}
def word_to_digit(phrase)
  rephrase = phrase.split(' ').map do |word|
    if NUMBERS[word]
      NUMBERS[word].to_s
    else
      word
    end
  end
  rephrase.join(' ')
end

def word_to_digit(phrase)
  regex = /(one|two|three|four|five|six|seven|eight|nine)/

  phrase.gsub(regex, 'one' => 1, 'two'=> 2, 'three' => 3, 'four' => 4, 'five' => 5, 'six' => 6, 'seven' => 7, 'eight' => 8, 'nine' => 9)
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') 