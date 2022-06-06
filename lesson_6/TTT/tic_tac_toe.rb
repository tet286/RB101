# tic_tac_toe.rb
# tic-tac-toe game follows LS video

require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINE = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
               [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
               [[1, 5, 9], [3, 5, 7]]


def prompt(msg)
  puts "=> #{msg}"
end

def joinor(arr, delimiter=', ', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimiter)
  end
end

def display_board(brd)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}. Computer is an #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
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
    prompt "Choose a position to place a piece: #{joinor(empty_squares(brd))}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, not a valid choice"
  end
  brd[square] = PLAYER_MARKER
end

def detect_threat(brd)
  WINNING_LINE.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 2
      return line
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 2
      return line
    end
  end
  nil
end

def computer_places_piece!(brd)
  threat = detect_threat(brd)
  case threat
  when nil then square = empty_squares(brd).sample
  else 
    square = threat.select { |num| brd[num] == INITIAL_MARKER }.pop
  end
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINE.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def score_keep(winner, score)
  case winner
  when 'Player' then score[0] += 1
  when 'Computer' then score[1] += 1
  else
    score
  end
end

score = [0,0]
winning_score = 5

loop do
  board = initialize_board

  loop do
    #p board
    display_board(board)
    player_places_piece!(board)
    break if someone_won?(board) || board_full?(board)

    computer_places_piece!(board)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie!"
  end

  score_keep(detect_winner(board), score)

  break if score.include?(winning_score)
  prompt "Play again?"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Winner is the #{score[0] == winning_score ? 'Player' : 'Computer'}"
prompt "Thanks for playing Tic-Tac-Toe! Goodbye!"
