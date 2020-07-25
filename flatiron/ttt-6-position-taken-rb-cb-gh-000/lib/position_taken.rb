# Method to check if position on board has already been taken.
def position_taken?(board, index)
  # Checks the emptiness of board position
  # including edge cases.
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  # Checks the board for a position already
  # filled by an X or an O.
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end
