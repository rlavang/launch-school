def cleanup(string)
  string.gsub(/[^a-zA-z]/, ' ').squeeze(" ")
end

def cleanup(string)
  valid_characters = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','w','x','y','z', ' ']
  string = string.split('').map do |char| 
    if valid_characters.include?(char)
      char
    else
      ' '
    end
  end
 string.join.squeeze
end

p cleanup("---what's my +*& line?") == ' what s my line '
