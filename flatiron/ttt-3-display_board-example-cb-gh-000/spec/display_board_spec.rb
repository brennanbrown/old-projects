require_relative '../lib/display_board'

describe '/lib/display_board.rb' do
  it 'defines a method display_board' do
    expect(defined?(display_board)).to be_truthy
  end

  context "#display_board method" do
    it 'represents a cell as a string with 3 spaces' do
      output = capture_puts{ display_board }

      expect(output).to include("   ")
    end
    
    it 'separates cells with a | character' do
      output = capture_puts{ display_board }

      expect(output).to include("   |   ")      
    end

    it 'prints an 3 cell row' do
      output = capture_puts{ display_board }

      expect(output).to include("   |   |  ")
    end

    it 'separates rows with a line of 11 -' do
      output = capture_puts{ display_board }

      expect(output).to include("-----------")
    end

    it 'prints a 3x3 tic tac toe board' do
      output = capture_puts{ display_board }

      expected_output  = "   |   |   \n"
      expected_output += "-----------\n"
      expected_output += "   |   |   \n"
      expected_output += "-----------\n"
      expected_output += "   |   |   \n"

      expect(output).to eq(expected_output)
    end
  end
end
