def staggered_case(string, alphabetic_only)
  switch_case = true
  staggered_array = string.split('').map.with_index do |value, index|

    if value !~ /[a-z]/i && alphabetic_only == true
      value
    elsif switch_case
      switch_case = false
      value.upcase
    else
      switch_case = true
      value.downcase
    end
  end
  staggered_array.join
end


p staggered_case('I Love Launch School!', true) == 'I lOvE lAuNcH sChOoL!'
p staggered_case('I Love Launch School!', false) == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL CAPS', true) == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers', true) == 'IgNoRe 77 ThE 444 nUmBeRs'
p staggered_case('ALL_CAPS', false) == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers', false) == 'IgNoRe 77 ThE 444 NuMbErS'