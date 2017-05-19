require 'game'
require 'square'

describe Game do

  subject(:game) { described_class.new }

  describe '#play' do
    it "(feature) let's player take go, switch player, then prints who's next" do
      game.play("a1")
      expect(game.board[0].value).to eq(1)
      expect(game.current_player).to eq("player2")
    end
  end

  describe '#find' do
    it 'returns the square' do
      expect(game.find("a1")).to eq(game.board[0])
    end
  end

  describe '#take' do
    it 'sets square on go' do
      game.take("a1")
      expect(game.board[0].value).to eq(1)
    end
  end

  describe '#set(square)' do
    context 'player 1' do
      it 'set square to tick' do
        game.set_tick("a1")
        expect(game.board[0].value).to eq(1)
      end
    end

    context 'player 2' do
      it 'set square to tack' do
        game.set_tack("a1")
        expect(game.board[0].value).to eq(0)
      end
    end
  end

  describe '#switch_player' do
    it 'players alternate' do
      game.switch_player
      expect(game.current_player).to eq("player2")
    end
  end

  describe '#check_win' do
    it 'player wins if 3 in a row' do
      game.board[0].value = 0
      game.board[1].value = 0
      game.board[2].value = 0
      expect(game.check_win).to eq(true)
    end
  end

end
