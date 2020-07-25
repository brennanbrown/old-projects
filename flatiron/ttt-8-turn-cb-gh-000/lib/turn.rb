# Method to initalize the display of the Tic-tac-toe board.
def display_board(board = [" "," "," "," "," "," "," "," "," "])
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# Method to convert the user input into the correct position in the array.
def input_to_index(user_input)
    index = user_input.to_i - 1
end


# Method to place the player's choice onto the board.
def move(board, index, player_choice = "X")
    board[index] = player_choice
end

# Method to check whether the input is within the index,
# as well as check if the position has already been filled in.
def valid_move?(board, index)
    if index >= 0 && index <= 9
        if board[index] != "X" || board[index] == "O"
            return true
        else
            puts "Error, invalid move!"
            return false
        end
    else
        return false
    end
end

# Method to allow recurring turns for the user.
def turn(board)
    puts "Please enter 1-9:"
    user_input = gets.strip
    index = input_to_index(user_input)

    # A simple loop that will check the validity of the move,
    # then update the game accordingly.
    if valid_move?(board, index) == true
        move(board, index, player_choice = "X")

        display_board(board)

        puts board
    else
        puts "Error! Out of index!"
        turn(board)
    end
end
