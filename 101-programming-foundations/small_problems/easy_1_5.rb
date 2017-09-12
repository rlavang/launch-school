def reverse_sentence(string)
  array_of_string = string.split
  reversed_array_of_string = []
  array_of_string.each do |word|
    reversed_array_of_string.unshift(word)
  end
  reversed_string = reversed_array_of_string.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'


=begin
  
def reverse_sentence(string)
  string.split.reverse.join(' ')
end
  
=end