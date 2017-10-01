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

def initalize_hand(deck)
  hand = deck.sample(2)
  deck.delete(hand[0])
  deck.delete(hand[1])
  hand
end

def hit(deck, hand)
  hand << deck.sample
end

def total(cards)
  card_values = cards.map{ |card| card[1] }

  total_value = 0
  card_values.each do |value|
    case value
    when 'J', 'Q', 'K'
      total_value += 10
    when 'A'
      total_value += 11
    else
      total_value += value.to_i
    end
  end

#Select only aces to adjust for highest value
  card_values.select {|value| value == 'A'}.count.times do
    total_value -=10 if total_value > 21
  end

  total_value
end

def busted?(hand)
  if total(hand) > 21
    return true
  end
  false
end

#Intialize Game
player_hand = initalize_hand(deck)
puts "Your hand is #{player_hand}"

#Players Turn
loop do
  puts "Hit or stay?"
  answer = gets.chomp
  hit(deck, player_hand)   
  puts "Your hand is #{player_hand}"
  puts "Total value of your hand is #{total(player_hand)}"
  break if answer == 'stay' || busted?(player_hand)
end

if busted?(player_hand)
  puts "You lost. Try your luck another time."
  #end the game
else
  puts "You chose to stay"
end

#Dealer Turn
dealer_hand = initalize_hand(deck)
puts "Dealer hand is #{dealer_hand}"
puts "Total value of hand is #{total(dealer_hand)}"
loop do
  if busted?(dealer_hand)
     puts "Dealer busted. You win!"
     break
  elsif  total(dealer_hand) > total(player_hand) 
    puts "Dealer wins!"
    break
  else
    hit(deck, dealer_hand)
    puts "Dealer hand is #{dealer_hand}"
    puts "Dealer hand value is #{total(dealer_hand)}"
  end
end

p total([['H', '2'], ['S', 'J'], ['D', 'A']])
p total([['H', 'Q'], ['S', 'J'], ['D', 'A']])
p total([['H', 'A'], ['S', 'J'], ['D', 'A']])
p total([['H', '9'], ['S', 'J'], ['D', 'A'],['S','A']])