deck = [['S', '1'], ['H', '1'], ['C', '1'],['D', '1'],
        ['S', '2'], ['H', '2'], ['C', '2'],['D', '2'],
        ['S', '3'], ['H', '3'], ['C', '3'],['D', '3'],
        ['S', '4'], ['H', '4'], ['C', '4'],['D', '4'],
        ['S', '5'], ['H', '5'], ['C', '5'],['D', '5'],
        ['S', '6'], ['H', '6'], ['C', '6'],['D', '6'],
        ['S', '7'], ['H', '7'], ['C', '7'],['D', '7'],
        ['S', '8'], ['H', '8'], ['C', '8'],['D', '8'],
        ['S', '9'], ['H', '9'], ['C', '9'],['D', '9'],
        ['S', '10'], ['H', '10'], ['C', '10'],['D', '10'],
        ['S', 'J'], ['H', 'J'], ['C', 'J'],['D', 'J'],
        ['S', 'Q'], ['H', 'Q'], ['C', 'Q'],['D', 'Q'],
        ['S', 'K'], ['H', 'K'], ['C', 'K'],['D', 'K'],
        ['S', 'A'], ['H', 'A'], ['C', 'A'],['D', 'A']]

def total(cards)
  total_value = 0
  value = 0
  cards.each do |card|
    value = card[1]
    case value
    when 'J', 'Q', 'K'
      value = 10
    when 'A'
      value = 11
    else
      value = card[1].to_i
    end
    total_value += value
  end

#Select only aces to adjust for highest value
  cards = cards.select do |card|
    card[1] == 'A'
  end

  cards.each do |card|
    if total_value > 21
      total_value -= 10
    end
  end
  total_value
end

loop do
  puts "Hit or stay?"
  answer = gets.chomp
  break if answer == 'stay' || busted?

end

if busted?
  #end tje gam,e
else
  puts "You chose to stay"
end

p total([['H', '2'], ['S', 'J'], ['D', 'A']])
p total([['H', 'Q'], ['S', 'J'], ['D', 'A']])
p total([['H', 'A'], ['S', 'J'], ['D', 'A']])
p total([['H', '9'], ['S', 'J'], ['D', 'A'],['S','A']])