def greetings(person, career)
  full_name = person.join(" ")
  "Hello, #{full_name}! Nice to have a #{career[:title]} #{career[:occupation]} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
