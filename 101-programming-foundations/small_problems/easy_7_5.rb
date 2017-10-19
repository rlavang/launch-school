def staggered_case(string, upcase)

  staggered_array = string.split('').map.with_index do |value, index|
    if upcase
      if index % 2 == 0
        value.upcase
      else
        value.downcase
      end
    else 
      if index % 2 == 0
        value.downcase
      else
        value.upcase
      end
    end
  end
  staggered_array.join
end


p staggered_case('I Love Launch School!', true) == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('I Love Launch School!', false) 
p staggered_case('ALL_CAPS', true) == 'AlL_CaPs'
p staggered_case('ALL_CAPS', false)
p staggered_case('ignore 77 the 444 numbers', true) == 'IgNoRe 77 ThE 444 NuMbErS'
p staggered_case('ignore 77 the 444 numbers', false)