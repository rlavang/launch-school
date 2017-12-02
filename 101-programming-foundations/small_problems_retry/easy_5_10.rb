def print_in_box(phrase)
  puts ("+#{"-" * (phrase.length + 2) }+")
  puts ("| #{" " * phrase.length} |")
  puts ("| #{phrase} |")
  puts ("| #{" " * phrase.length} |")
  puts ("+#{"-" * (phrase.length + 2) }+")
end

p print_in_box('To boldly go where no one has gone before.')
p print_in_box('')