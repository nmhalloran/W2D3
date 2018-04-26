require 'towers'

describe TowersOfHanoi do
  subject(:game) { TowersOfHanoi.new }


  describe '#move' do
    it 'takes a disc from one tower and places it on target tower' do
      expect(game.move(0,2)).to eq([[3, 2], [], [1]])
    end

    it 'will not place larger discs on top of smaller ones' do
      game.move(0,1)
      expect {game.move(0,1)}.to raise_error("Cannot place larger disc on smaller disc.")
    end

    it 'raises an error if the player tries to take a disc from an empty tower' do

      expect {game.move(2,1)}.to raise_error("No disc at starting tower.")
    end

    it 'checks to see if the player has won after every move' do
     game.move(0, 2)
     expect(game).to receive(:won?)
    end

  end

  describe '#won?' do
    it 'returns false if game is not over' do
      expect(game.won?).to be(false)
    end

    it 'returns true if tower 3 holds all the discs' do
      towers = [[], [], [3, 2, 1]]
      expect(game.won?).to be(true)
    end

    it 'returns true if tower 2 holds all the discs' do
      towers = [[], [3, 2, 1], []]
      expect(game.won?).to be(true)
    end
  end
end
