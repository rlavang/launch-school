#Write a method that takes one argument, a positive integer, and returns the sum of its digits.

def sum(number)
  string_numbers = number.to_s.split('')
  string_numbers.reduce do |sum, number|
    sum.to_i + number.to_i
  end
end
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

=begin
Launch School Solution
def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end
=end
