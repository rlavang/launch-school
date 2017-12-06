def staggered_case(string)
  capitalize = true
  staggered_characters = string.chars.map do |char|
    if char =~ /[^a-z]/i
      char
    elsif capitalize
      capitalize = false
      char.upcase
    else
      capitalize = true
      char.downcase
    end
  end
  staggered_characters.join()
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'