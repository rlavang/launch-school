VALID_CHOICES = {'r' => 'rock', 's' => 'scissors', 'p' => 'paper', 'sp' => 'spock', 'l' => 'lizard'}
WIN_CONDITIONS = {'rock' => ['scissors', 'lizard'], 'scissors' => ['paper', 'lizard'], 'paper' =>['spock', 'rock'], 'spock' => ['rock', 'scissors'], 'lizard' => ['spock', 'paper']}

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  WIN_CONDITIONS[first].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

loop do
  user_choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.values}")
    user_choice = Kernel.gets().chomp()
    if VALID_CHOICES.has_key?(user_choice)
      user_choice = VALID_CHOICES[user_choice]
      break
    else
      prompt("That's not a valid choice.")
    end
  end
  
  computer_choice = VALID_CHOICES.values.sample

  prompt("You chose #{user_choice}; Computer chose: #{computer_choice}")

  display_results(user_choice, computer_choice)

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Good bye!")
