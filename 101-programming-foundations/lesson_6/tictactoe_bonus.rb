WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]] # diagonals

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
STARTER = 'choose'

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----|-----|-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----|-----|-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def joinor(empty_squares, delimiter = '', last_delimit = 'or')
  case empty_squares.size
  when 0 then ''
  when 1 then empty_squares.first
  when 2 then empty_squares.join(" #{last_delimit} ")
  else
    empty_squares[-1] = "#{last_delimit} #{empty_squares.last}"
    empty_squares.join(delimiter)
  end
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    empty_squares = empty_squares(brd)
    prompt "Choose a square (#{joinor(empty_squares, ', ', 'and')}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = nil

  WINNING_LINES.each do |line|
    square = computer_optimal_play(line, brd, PLAYER_MARKER)
    break if square
  end

  if !square
    WINNING_LINES.each do |line|
      square = computer_optimal_play(line, brd, COMPUTER_MARKER)
      break if square
    end
  end

  if !square && brd[5] == INITIAL_MARKER
    square = 5
  end

  square = empty_squares(brd).sample if !square

  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def increment_score(score, brd)
  score[:player] += 1 if detect_winner(brd) == 'Player'
  score[:computer] += 1 if detect_winner(brd) == 'Computer'
  score
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def current_player(player)
  player == 'c' ? 'c' : 'p'
end

def alternate_player(player)
  player == 'c' ? 'p' : 'c'
end

def place_piece(board, current_player)
  if current_player == 'c'
    computer_places_piece!(board)
  else
    player_places_piece!(board)
  end
end

def computer_optimal_play(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  end
end

def end_game?(input)
  loop do
    if input.downcase == 'y'
      return true
    elsif input.downcase == 'n'
      return false
    else
      prompt("Please input y to play again or n to stop.")
      gets.chomp
    end
  end
end

def choose_starter
  current_player = nil
  if STARTER == 'choose'
    loop do
      prompt "Who plays first? Type c for computer or p for player."
      current_player = gets.chomp
      break if current_player == 'c' || current_player == 'p'
      prompt "Invalid input. Please type c for computer or p for player."
    end
  elsif STARTER == 'p'
    current_player = 'p'
  else
    current_player = 'c'
  end
  current_player
end

loop do # Initialize Game
  score = { :player => 0, :computer => 0 }
  loop do # Start Round
    board = initialize_board
    current_player = choose_starter
    loop do # Play Turn
      display_board(board)
      place_piece(board, current_player)
      break if someone_won?(board) || board_full?(board)
      current_player = alternate_player(current_player)
    end

    display_board(board)

    if someone_won?(board)
      prompt "#{detect_winner(board)} won!"
      increment_score(score, board)
    else
      prompt "It's a tie!"
    end

    prompt "SCORE - Player: #{score[:player]} Computer: #{score[:computer]}"
    break if score[:player] >= 5 || score[:computer] >= 5
  end
  prompt "Play again? (y or n)"
  answer = gets.chomp
  break if end_game?(answer)
end
prompt "Thanks for playing Tic Tac Toe! Good Bye!"
