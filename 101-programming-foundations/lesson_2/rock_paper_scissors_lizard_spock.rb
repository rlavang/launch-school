
VALID_CHOICES = { 'r' => 'rock',
                  's' => 'scissors',
                  'p' => 'paper',
                  'sp' => 'spock',
                  'l' => 'lizard' }

WIN_CONDITIONS = { 'rock' => ['scissors', 'lizard'],
                   'scissors' => ['paper', 'lizard'],
                   'paper' => ['spock', 'rock'],
                   'spock' => ['rock', 'scissors'],
                   'lizard' => ['spock', 'paper'] }

def prompt(message)
  Kernel.puts("=> #{message}")
end

def winner(player, computer)
  if WIN_CONDITIONS[player].include?(computer)
    :player
  elsif WIN_CONDITIONS[computer].include?(player)
    :computer
  end
end

def update_score(score, winner)
  if winner == :player
    score[:player] += 1
  elsif winner == :computer
    score[:computer] += 1
  end
end

def display_results(score, winner)
  if winner == :player
    prompt("You won!")
  elsif winner == :computer
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
  prompt("Player Score: #{score[:player]}. Computer Score: #{score[:computer]}")
end

def game_over?(score)
  score[:player] >= 5 || score[:computer] >= 5
end

def display_final_results(score)
  if score[:player] >= 5
    prompt("You have one the game! Congratulations!")
  elsif score[:computer]
    prompt("You have lost the game to the computer! Maybe next time!")
  end
end

loop do
  score_card = { player: 0, computer: 0 }
  loop do
    user_choice = ''
    loop do
      prompt("Choose one: r for Rock, p for Paper, s for Scissor,
             sp for Spock, and l for Lizard")
      user_choice = Kernel.gets().chomp()
      if VALID_CHOICES.key?(user_choice.downcase)
        user_choice = VALID_CHOICES[user_choice]
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.values.sample

    prompt("You chose #{user_choice}; Computer chose: #{computer_choice}")

    winner = winner(user_choice, computer_choice)

    update_score(score_card, winner)

    display_results(score_card, winner)

    break if game_over?(score_card)
  end

  display_final_results(score_card)

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end
prompt("Thank you for playing. Good bye!")
