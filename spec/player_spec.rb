require './lib/player.rb'
describe Player do
  attr_reader :take_the_hit
let(:player) { Player.new(:name) }
  it 'returns its name' do
    expect(player.name).to eq(:name)
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(player.hit_points).to eq(described_class::DEFAULT_HIT_POINTS)
    end
  end
  describe '#attack' do
    it 'injures the other player' do
      player.take_the_hit
      expect(player.hit_points).to eq(described_class::DEFAULT_HIT_POINTS - 10)
    end
  end

end
