require './lib/game.rb'
describe Game do
subject(:game) { described_class.new }
let(:player1) { double :player }
let(:player2) { double :player }

describe '#attack' do
  it 'injures the other player' do
    expect(player2).to receive(:take_the_hit)
    game.attack(player2)
  end
 end

end
