def print_in_box(string)
  dash = '-'
  plus = '+'
  top = plus + (dash * (string.length + 2)) + plus
  bottom = top
  middle = "|" + " " * (string.length + 2) + "|"
  puts top
  puts middle
  puts "| #{string} |"
  puts middle
  puts bottom

end

MAX_LENGTH = 40

def print_in_box_2(string)
  dash = '-'
  plus = '+'
  top = plus + dash * (MAX_LENGTH + 2) + plus
  bottom = top
  middle = "|" + " " * (MAX_LENGTH + 2) + "|"
  puts top
  puts middle
  if string.length > MAX_LENGTH
    new_string = ''
    previous_index = 0
    string.split('').each_with_index do |_, index|
      if index >= (MAX_LENGTH - 1) && index % (MAX_LENGTH - 1) == 0
       new_string = string[previous_index..index]
       previous_index = index
       puts "| #{new_string} |"
      end
    end
    
  else
    puts "| #{string} |"
  end
  puts middle
  puts bottom

end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
print_in_box_2('To boldly go where no one has gone before.  no one has gone before  no one has gone before  no one has gone before gone before  no one has gone befor')
