hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

new_hash = hsh.map do |_, produce|
  
  if produce[:type] == 'fruit'
    produce[:colors].map {|color|color.capitalize}
  

  elsif produce[:type] == 'vegetable'
    produce[:size].upcase
  end
end
p new_hash