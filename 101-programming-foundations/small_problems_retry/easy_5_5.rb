def cleanup(phrase)
  consecutive_counter = 0
  new_phrase = []
  phrase.chars.each_with_index do |word, index|
    if word =~ /[^a-z]/
      if consecutive_counter > 0
        next
      else
        consecutive_counter +=1
        new_phrase << ' '
      end
    else
      new_phrase << word
      consecutive_counter = 0
    end
  end
  new_phrase.join('')
end

p cleanup("---what's my +*& line?") == ' what s my line '

def cleanup(phrase)
  phrase.gsub(/[^a-z]/i, ' ').squeeze(' ')
end

p cleanup("---what's my +*& line?") == ' what s my line '
