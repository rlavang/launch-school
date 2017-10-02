deck = [['S', '1'], ['H', '1'], ['C', '1'], ['D', '1'],
        ['S', '2'], ['H', '2'], ['C', '2'], ['D', '2'],
        ['S', '3'], ['H', '3'], ['C', '3'], ['D', '3'],
        ['S', '4'], ['H', '4'], ['C', '4'], ['D', '4'],
        ['S', '5'], ['H', '5'], ['C', '5'], ['D', '5'],
        ['S', '6'], ['H', '6'], ['C', '6'], ['D', '6'],
        ['S', '7'], ['H', '7'], ['C', '7'], ['D', '7'],
        ['S', '8'], ['H', '8'], ['C', '8'], ['D', '8'],
        ['S', '9'], ['H', '9'], ['C', '9'], ['D', '9'],
        ['S', '10'], ['H', '10'], ['C', '10'], ['D', '10'],
        ['S', 'J'], ['H', 'J'], ['C', 'J'], ['D', 'J'],
        ['S', 'Q'], ['H', 'Q'], ['C', 'Q'], ['D', 'Q'],
        ['S', 'K'], ['H', 'K'], ['C', 'K'], ['D', 'K'],
        ['S', 'A'], ['H', 'A'], ['C', 'A'], ['D', 'A']]

def clear_screen
  (system "clear") || (system 'cls')
end

def prompt(msg)
  puts "=> #{msg}"
end

def initalize_hand(deck)
  hand = deck.sample(2)
  deck.delete(hand[0])
  deck.delete(hand[1])
  hand
end

def hit(deck, hand)
  hand << deck.sample
end

def detect_result(dealer_hand, player_hand)
  player_total = total(player_hand)
  dealer_total = total(dealer_hand)

  if player_total > 21
    :player_busted
  elsif dealer_total > 21
    :dealer_busted
  elsif dealer_total < player_total
    :player
  elsif player_total < dealer_total
    :dealer
  else
    :tie
  end
end

def display_result(dealer_hand, player_hand)
  result = detect_result(dealer_hand, player_hand)

  case result
  when :player_busted
    prompt "You busted! Dealer wins!"
  when :dealer_busted
    prompt "Dealer busted! You win!"
  when :player
    prompt "You win!"
  when :dealer
    prompt "Dealer wins!"
  else
    prompt "It's a tie! Try your luck next time!"
  end
end

def total(cards)
  card_values = cards.map { |card| card[1] }

  total_value = 0
  card_values.each do |value|
    case value
    when 'J', 'Q', 'K' then total_value += 10
    when 'A' then total_value += 11
    else total_value += value.to_i
    end
  end

  # Select only aces to adjust for highest value
  card_values.select { |value| value == 'A' }.count.times do
    total_value -= 10 if total_value > 21
  end

  total_value
end

def busted?(hand)
  return true if total(hand) > 21
  false
end

def play_again?
  loop do
    prompt "Would you like to play again? y or n"
    answer = gets.chomp.downcase
    if answer == 'y'
      return true
    elsif answer == 'n'
      return false
    else
      prompt "Invalid response. Please put 'y' for yes or 'n' for no."
    end
  end
  system_clear
end

# Intialize Game
loop do
  clear_screen
  prompt "Welcome to Twenty-One!"
  prompt "Dealing player hand..."

  player_hand = initalize_hand(deck)
  dealer_hand = initalize_hand(deck)
  prompt "Your hand is #{player_hand}"
  prompt "Total value of your hand is #{total(player_hand)}"

  # Players Turn
  loop do
    prompt "Hit or stay?"
    answer = nil
    loop do
      answer = gets.chomp.downcase
      break if answer == 'hit' || answer == 'stay'
      prompt "Invalid input. Please type in hit or stay for your move."
    end
    clear_screen
    if answer == 'hit'
      hit(deck, player_hand)
      prompt "Your hand is #{player_hand}"
      prompt "Total value of your hand is #{total(player_hand)}"
    end
    break if answer == 'stay' || busted?(player_hand)
  end

  if busted?(player_hand)
    display_result(dealer_hand, player_hand)
    play_again? ? next : break
  end

  # Dealer Turn
  prompt "Dealers turn"
  puts "=========================="
  loop do
    prompt "Dealer hand is #{dealer_hand}"
    prompt "Value of dealer's hand is #{total(dealer_hand)}."
    prompt "Your hand is worth #{total(player_hand)}"
    result = detect_result(dealer_hand, player_hand)
    break if result == :dealer || result == :dealer_busted || result == :tie
    hit(deck, dealer_hand)
    prompt "Dealer drawing card..."
    sleep 4
    clear_screen
  end
  display_result(dealer_hand, player_hand)
  break unless play_again?
  clear_screen
end
prompt "Thanks for playing!"
