# CONSTANTS #

# Provides a nested array of all possible combinations
# that would win the game of Tic Tac Toe.
WIN_COMBINATIONS = [
  [0,1,2],  # Top    Row
  [3,4,5],  # Middle Row
  [6,7,8],  # Bottom Row

  [0,3,6],  # Left   Column
  [1,4,7],  # Center Column
  [2,5,8],  # Right  Column

  [0,4,8],  # Left   Diagonal
  [2,4,6]   # Right  Diagonal
]


# HELPER METHODS #

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
def move(board, index, current_player)
  board[index] = current_player
end


# Method to check if the position on the board has already been filled in.
def position_taken?(board, index)
  board[index] != " " && board[index] != ""
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
  if valid_move?(board, index)
    move(board, index, current_player(board))
    display_board(board)
  else
    turn(board)
  end
end


# Helper Method that detects if a position has already been taken.
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end


# Method goes through board array and checks each
# position in the array, and adds to the amount of
# turns played if the checked position isn't blank.
def turn_count(board)
  turns_played = 0
  board.each do |index|
    if index != " "
      turns_played += 1
    end
  end
  return turns_played
end


# Method defines the current player of the game by
# checking the count of turns played from above
# method and subsequently returns "X" or "O" for
# even and odd turns, respectively.
def current_player(board)
  turns_played = turn_count(board)
  if turns_played % 2 == 0
    return "X"
  else
    return "O"
  end
end


# Method that goes through each possible array combination within
# the board and compares it with all possible win combinations and
# declares the game won if a combination is found.
def won?(board)
  # for each win_combo in WIN_COMBINATIONS
  WIN_COMBINATIONS.each do |win_combo|
    # win_combination is a 3 element array of indexes that compose a win, eg. [0,1,2]
    # grab each index from the win_combo that composes a win.
    win_index_1 = win_combo[0]
    win_index_2 = win_combo[1]
    win_index_3 = win_combo[2]
    # If/else that declares a winner if all three spots in a winning array have
    # either an "X" or an "O", respectively.
    if board[win_index_1] == "X" && board[win_index_2] == "X" && board[win_index_3] == "X"
      puts "Congratulations X!"
      puts "You won!"
      return win_combo
    elsif board[win_index_1] == "O" && board[win_index_2] == "O" && board[win_index_3] == "O"
      puts "Congratulations O!"
      puts "You won!"
      return win_combo
    end
  end
  return false
end


# Method that goes through the board's array searching for an empty position,
# if none are found, it will return true.
def full?(board)
  !board.any? { |value| value.nil? || value == "" || value == " " }
end


# Method that returns true if the board has not been won and is full,
# false if the board is not won and the board is not full,
# and false if the board is won.
def draw?(board)
  won = won?(board)
  full = full?(board)
  if won == false && full == true
    return true
  elsif won == false && full == false
    return false
  end
end


# Method that checks if the game is over by checking the return values
# of the won? and draw? method to see whether they're true or false.
def over?(board)
  won = won?(board)
  draw = draw?(board)
  # Due to the won? method never explicitly returning a true value,
  # the program must instead check if it isn't false.
  if draw == true || won != false
    return true
  else
    return false
  end
end


# Method that declares the winner of the game by checking the token
# value of the won? method. Returns nil if there is no winner (yet).
def winner(board)
  won = won?(board)
  if won != false
    if board[won[0]] == "X"
      return "X"
    elsif board[won[0]] == "O"
      return "O"
    end
  else
    return nil
  end
end


# MAIN METHOD #

# Method is run by the CLI by the user, and goes through
# each turn until the board is full. If there is a winner
# before the board is full, a message prompt will declare them!
def play(board)
  until over?(board) == true
    puts "Please enter 1-9: "
    turn(board)
  end

  if draw?(board) == true
    puts "Cats Game!"
  elsif won?(board) == true
    winner(board)
  end
end
