require_relative "../lib/move.rb"

describe './lib/move.rb' do
  it 'defines a move method' do
    board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    expect(defined?(move)).to be_truthy
  end

  context '#move' do
    it 'accepts 3 arguments: the board, the position a player wants to fill and their char, X or O' do
      expect{move}.to raise_error(ArgumentError)
    end

    it 'provides a default value for the 3rd argument' do
      board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
      expect {move(board, 2)}.to_not raise_error
    end

    it 'allows "X" player in the top left position' do
      board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
      move(board, 0, "X")

      expect(board).to eq(["X", " ", " ", " ", " ", " ", " ", " ", " "])
    end

    it 'allows "O" player in the middle' do
      board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
      move(board, 4, "O")

      expect(board).to eq([" ", " ", " ", " ", "O", " ", " ", " ", " "])
    end

    it 'allows "X" player in the bottom right' do
      board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
      move(board, 8)

      expect(board).to eq([" ", " ", " ", " ", " ", " ", " ", " ", "X"])
    end

    it 'allows "X" player in the bottom right and "O" in the top left ' do
      board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
      move(board, 0, "O")
      move(board, 8, "X")

      expect(board).to eq(["O", " ", " ", " ", " ", " ", " ", " ", "X"])
    end

    it 'allows "X" to win diagonally' do
      board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
      move(board, 0)
      move(board, 4)
      move(board, 8)

      expect(board).to eq(["X", " ", " ", " ", "X", " ", " ", " ", "X"])
    end

    it 'allows a tie game' do
      board = Array.new(9, " ")
      move(board, 0, "X")
      move(board, 1, "O")
      move(board, 2, "X")
      move(board, 3, "O")
      move(board, 4, "X")
      move(board, 5, "O")
      move(board, 6, "X")
      move(board, 7, "X")
      move(board, 8, "O")      

      expect(board).to eq(["X", "O", "X", "O", "X", "O", "X", "X", "O"])
    end
  end
end
