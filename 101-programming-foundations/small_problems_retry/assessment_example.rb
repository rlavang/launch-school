def reverse(string)
  reversed = []
  last_index = string.length - 1
  last_index.downto(0) do |index|
    reversed << string[index]
  end
  reversed.join('')

end

p reverse('hello world!')