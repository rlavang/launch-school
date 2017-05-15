def scream(words)
  words = words + "!!!!"
  puts words
end

scream("Yippeee")

#Yippeee!!!! will be printed to the screen. However, nil will be returned due to the implicit return of puts, returning a nil value.
