# HELPER METHODS

# Method to initalize the display of the Tic-tac-toe board.
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# Method to convert the user input into the correct position in the array.
def input_to_index(user_input)
  user_input.to_i - 1
end

# Method to place the player's choice onto the board.
def move(board, index, current_player = "X")
  board[index] = current_player
end

# Method to check if the position on the board has already been filled in.
def position_taken?(board, location)
  board[location] != " " && board[location] != ""
end

# Method to check whether the input is within the index.
def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end

# Method to allow recurring turns for the user.
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  # A simple loop that will check the validity of the move,
  # then update the game accordingly.
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end

# MAIN METHOD
# Method that loops the game (turn method) nine times,
# assuming maximum amount of moves are needed for simplicity.
def play(board)
  counter = 0
  while counter < 9
      turn(board)
      counter += 1
  end
end
