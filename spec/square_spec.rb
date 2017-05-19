require 'square'

describe Square do

  subject(:square) { described_class.new("a1") }

    describe '#tick' do
      it 'sets a square to tick(1)' do
        square.tick
        expect(square.value).to eq(1)
      end
    end

    describe '#tack' do
      it 'sets a square to tack(0)' do
        square.tack
        expect(square.value).to eq(0)
      end
    end

end
