def reverse_words(string)
  list_of_strings = string.split(' ')
  list_of_revised_strings = []
  list_of_strings.each do |string|
    if string.length >=5
      list_of_revised_strings << string.reverse
    else
      list_of_revised_strings << string 
    end
  end
  list_of_revised_strings.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS