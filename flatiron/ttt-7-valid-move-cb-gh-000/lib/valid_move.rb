# Method to check if position on Tic-tac-toe board is valid.
def valid_move?(board, index)
    # First checks if position is filled.
    if board[index] == "X" || board[index] == "O"
        return false
    # Second checks if position is on board.
    elsif index > 8
        return false
    # Finally allows move if previous requirements were met.
    elsif board[index] == " " || board[index] == "" || board[index] == nil
        return true
    end
end
