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

prompt("Welcome to Rock Paper Scissors Lizard Spock.")
prompt("The game ends for whoever gets to 5 points first.")

loop do
  score = { player: 0, computer: 0 }
  loop do
    user_choice = ''
    loop do
      prompt("Choose one: r for Rock, p for Paper, s for Scissor,
               sp for Spock, and l for Lizard")
      user_choice = Kernel.gets().chomp().downcase
      if VALID_CHOICES.key?(user_choice)
        user_choice = VALID_CHOICES[user_choice]
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.values.sample

    prompt("You chose #{user_choice}; Computer chose: #{computer_choice}")

    winner = winner(user_choice, computer_choice)

    update_score(score, winner)

    display_results(score, winner)

    break if game_over?(score)
  end

  display_final_results(score)

  answer = ''
  prompt("Do you want to play again? y for yes, n for no.")

  loop do
    answer = Kernel.gets().chomp().downcase()
    break if answer == 'y' || answer == 'n'
    prompt("Please input y for yes, or n for no.")
  end

  break if answer == 'n'

  system("cls") || system("clear")
end
prompt("Thank you for playing. Good bye!")
