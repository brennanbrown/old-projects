require_relative '../lib/play'

describe '#play' do
  it 'calls turn nine times' do
    board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

    allow(self).to receive(:gets).and_return('1','2','3','4','5','6','7','8','9')
    
    play(board)

    expect(board).to eq(["X","X","X","X","X","X","X","X","X",])
  end
end
