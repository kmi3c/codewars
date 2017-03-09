require __FILE__.gsub(/_spec|\/spec/, '')
describe :ArrayDiff do
  context 'Basic Tests' do
    it 'a was [1,2], b was [1], expected [2]' do
      expect(array_diff([1, 2], [1])).to eq [2]
    end
    it 'a was [1,2,2], b was [1], expected [2,2]' do
      expect(array_diff([1, 2, 2], [1])).to eq [2, 2]
    end
    it 'a was [1,2,2], b was [2], expected [1]' do
      expect(array_diff([1, 2, 2], [2])).to eq [1]
    end
    it 'a was [1,2,2], b was [], expected [1,2,2]' do
      expect(array_diff([1, 2, 2], [])).to eq [1, 2, 2]
    end
    it 'a was [], b was [1,2], expected []' do
      expect(array_diff([], [1, 2])).to eq []
    end
  end
end
