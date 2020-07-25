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
