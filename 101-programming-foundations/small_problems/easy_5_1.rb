def ascii_value(string)
      string.split('').inject(0) do |sum, character|
        sum += character.ord
  end
end
p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0
