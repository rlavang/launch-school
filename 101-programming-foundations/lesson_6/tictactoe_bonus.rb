WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]] # diagonals

INTIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
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
  choices = ''
  empty_squares.each_with_index do |value, index|
    if empty_squares.length == 1
      choices << "#{value}"
    elsif index == empty_squares.length - 1
      choices << "#{last_delimit} #{value}"
    else
      choices << "#{value}#{delimiter}"
    end
  end
  choices
end

def intialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INTIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INTIAL_MARKER }
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
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def increment_score(score, brd)
  score[:player] +=1 if detect_winner(brd) == 'Player'
  score[:computer] +=1 if detect_winner(brd) == 'Computer'
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

loop do # Initialize Game
  score = {:player => 0, :computer => 0}
  loop do # Play Round 
    board = intialize_board

    loop do # Play Turn
      display_board(board)

      player_places_piece!(board)
      break if someone_won?(board) || board_full?(board)

      computer_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
    end

    display_board(board)

    if someone_won?(board)
      prompt "#{detect_winner(board)} won!"
      increment_score(score, board)
    else
      prompt "It's a tie!"
    end

    prompt "Current score is Player: #{score[:player]} Computer: #{score[:computer]}"
    break if score[:player] >= 5 || score[:computer] >= 5
  end
    prompt "Play again? (y or n)"
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
end

puts "Thanks for playing Tic Tac Toe! Good Bye!"
