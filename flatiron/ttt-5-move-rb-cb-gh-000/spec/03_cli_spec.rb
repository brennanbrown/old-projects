require_relative "../lib/move.rb"

describe './bin/move executing a CLI Application' do
  it 'defines a board variable' do
    allow($stdout).to receive(:puts)
    allow(self).to receive(:gets).and_return("1")
    allow(self).to receive(:move)

    board = get_variable_from_file("./bin/move", "board")

    expect(board).to eq([" ", " ", " ", " ", " ", " ", " ", " ", " "])
  end

  it 'prints "Welcome to Tic Tac Toe!"' do
    allow($stdout).to receive(:puts)
    allow(self).to receive(:gets).and_return("1")

    expect($stdout).to receive(:puts).with("Welcome to Tic Tac Toe!"), "Make sure `bin/move` has code that can output 'Welcome to Tic Tac Toe!' exactly."

    run_file("./bin/move")
  end

  it 'asks the user for input' do
    allow($stdout).to receive(:puts)

    expect(self).to receive(:gets).and_return("1"), "Make sure `bin/move` is calling `gets` at some point for user input."

    run_file("./bin/move")
  end

  it 'converts the users input to an index' do
    allow($stdout).to receive(:puts)

    allow(self).to receive(:gets).and_return("1")
    
    expect(self).to receive(:input_to_index).and_return(0)

    run_file("./bin/move")
  end

  it 'calls move passing the index' do

    allow($stdout).to receive(:puts)

    allow(self).to receive(:gets).and_return('1')
    expect(self).to receive(:move).with(anything, 0, any_args), "Make sure `bin/move` is passing the index, not the input to the `#move` method."

    run_file("./bin/move")
  end

  it 'move modifies the board correctly' do
    allow($stdout).to receive(:puts)

    allow(self).to receive(:gets).and_return('1')
    board = get_variable_from_file("./bin/move", "board")

    expect(board).to eq(["X", " ", " ", " ", " ", " ", " ", " ", " "])
  end

  it 'calls display_board passing the modified board' do
    allow($stdout).to receive(:puts)

    allow(self).to receive(:gets).and_return('1')
    allow(self).to receive(:display_board)
    expect(self).to receive(:display_board).with(["X", " ", " ", " ", " ", " ", " ", " ", " "]).at_least(:once)

    run_file("./bin/move")
  end

  it 'prints the board with a move to the top left' do
    expect(self).to receive(:gets).and_return('1')

    output = capture_puts{ run_file("./bin/move") }

    expect(output).to include(" X |   |   ")
  end
end
