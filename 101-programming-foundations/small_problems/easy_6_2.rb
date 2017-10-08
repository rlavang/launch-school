=begin
- input
  - array of strings
- output
  - array of strings with vowels stripped out
- model the problem
  - given an array of strings,
  - remove all the vowels in every array value
  - array returned should contain no vowels
- Data Structure
  - array of strings
- Algorithm
  - map through the array
  - for every string word delete a,e,i, o, or u
  - return the new array
=end

def remove_vowels(array)
  array.map {|word| word.delete('aeiouAEIOU') } 
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']