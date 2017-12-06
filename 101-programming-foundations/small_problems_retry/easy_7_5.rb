def staggered_case(string)
  staggered_characters = string.chars.map.with_index do |char, index|
    if index.even?
      char.capitalize
    else
      char.downcase
    end
  end
  staggered_characters.join()
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'