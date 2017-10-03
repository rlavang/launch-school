SUITS = ['H', 'D', 'S', 'C']
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def clear_screen
  (system "clear") || (system 'cls')
end

def prompt(msg)
  puts "=> #{msg}"
end

def initalize_hand(deck)
  hand = []
  2.times do
    hand << deck.pop
  end
  hand
end

def hit(deck, hand)
  hand << deck.pop
end

def detect_result(player_total, dealer_total)
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

def display_result(player_total, dealer_total)
  result = detect_result(player_total, dealer_total)

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

def busted?(hand, total)
  return true if total > 21
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

  deck = initialize_deck
  player_hand = initalize_hand(deck)
  dealer_hand = initalize_hand(deck)
  player_total = total(player_hand)
  dealer_total = total(dealer_hand)
  prompt "Your hand is #{player_hand}"
  prompt "Total value of your hand is #{player_total}"

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
      player_total = total(player_hand)
      prompt "Your hand is #{player_hand}"
      prompt "Total value of your hand is #{player_total}"
    end
    break if answer == 'stay' || busted?(player_hand, player_total)
  end

  if busted?(player_hand, player_total)
    display_result(player_total, dealer_total)
    play_again? ? next : break
  end

  # Dealer Turn
  prompt "Dealers turn"
  puts "=========================="
  loop do
    prompt "Dealer hand is #{dealer_hand}"
    prompt "Value of dealer's hand is #{dealer_total}."
    prompt "Your hand is worth #{player_total}"
    result = detect_result(player_total, dealer_total)
    break if result == :dealer || result == :dealer_busted || result == :tie
    hit(deck, dealer_hand)
    dealer_total = total(dealer_hand)
    prompt "Dealer drawing card..."
    sleep 4
    clear_screen
  end
  display_result(player_total, dealer_total)
  break unless play_again?
  clear_screen
end
prompt "Thanks for playing!"
