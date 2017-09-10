#Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

def repeat(word, repetition_amount)
  repetition_amount.times do
    puts word
  end
end

repeat('Hello', 3)
repeat('Oi', 0)

