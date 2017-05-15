def uppercase words
    if words.length > 10
        words.upcase
    else
        words
    end
end

puts uppercase("abCdeFhgiLasd")
puts uppercase('hello')
