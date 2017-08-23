=begin
1. a method that returns the sum of numbers 
START

DEFINE greatest_number method that takes number_1 and number_2
SET sum = the sum of number_1 and number_2
RETURN sum

puts greatest_number(number1, number2)
END


2. a method that takes an array of strings, and returns a string that is all those strings concatenated together

START

DEFINE string_concatenator that takes an array of strings
SET iterator = 0
SET final_string = ''
WHILE iterator < length of array of strings
  append value within strings collection at space iterator
  iterator = iterator + 1

RETURN iterator
END
puts string_concatenator(array of strings)


3. a method that takes an array of integers, and returns a new array with every other element

START
iterator = 0
final_array = []
while iterator < length of array of integers
  IF iterator % 2 == 0
    push array of integers at space iterator into final_array  

RETURN final_array
END

puts method(array of integers)
=end

collection = [1,2,3,4,5]

iterator = 1
saved_number = collection[0]

while iterator < collection.length
  current = collection[iterator]
  if saved_number >= current
    puts 'next'
    
  else
    puts 'switching'
    saved_number = current
  end
  iterator = iterator + 1
end

puts saved_number