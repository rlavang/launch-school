words = "the flintstones rock"
words = words.split(' ')
words.map! do |name|
  name.capitalize
end

p words.join(' ')