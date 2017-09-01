def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > new_buffer_size
  buffer
end

#buffer in rolling_buffer1 gets mutated

#input_array in rolling_buffer2 does not get mutatated. 

#Both functions return the same value.