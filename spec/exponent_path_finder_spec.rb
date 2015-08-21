require_relative './spec_helper'
require_relative '../exponent_path_finder'

describe ExponentPathFinder do
  describe '.shortest_path' do
    subject { exponent_path_finder.shortest_path}
    before { subject }
    context 'when exponent is 1' do
      let(:exponent_path_finder) { ExponentPathFinder.new(1)}
      it 'returns cost as 0' do
        expect(exponent_path_finder.cost).to eql(0)
      end

      it 'returns correct shortest path' do
        expect(exponent_path_finder.shortest_route).to eql([1])
      end
    end

    context 'when exponent is 2' do
      let(:exponent_path_finder) { ExponentPathFinder.new(2)}

      it 'returns cost as 1' do
        expect(exponent_path_finder.cost).to eql(1)
      end

      it 'returns correct shortest path' do
        expect(exponent_path_finder.shortest_route).to eql([1,2])
      end
    end

    context 'when exponent is 3' do
      let(:exponent_path_finder) { ExponentPathFinder.new(3)}
      it 'returns cost as 2' do
        expect(exponent_path_finder.cost).to eql(2)
      end

      it 'returns correct shortest path' do
        expect(exponent_path_finder.shortest_route).to eql([1,2,3])
      end
    end

    context 'when exponent is 4' do
      let(:exponent_path_finder) { ExponentPathFinder.new(4)}

      it 'returns cost as 2' do
        expect(exponent_path_finder.cost).to eql(2)
      end

      it 'returns correct shortest path' do
        expect(exponent_path_finder.shortest_route).to eql([1,2,4])
      end
    end

    context 'when exponent is 15' do
      let(:exponent_path_finder) { ExponentPathFinder.new(15)}

      it 'returns cost as 5' do
        expect(exponent_path_finder.cost).to eql(5)
      end

      it 'returns correct shortest path' do
        expect(exponent_path_finder.shortest_route).to eql([1,2,3,5,10,15])
      end
    end
  end

end