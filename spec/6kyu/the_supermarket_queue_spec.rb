require __FILE__.gsub(%r{_spec|\/spec}, '')

describe :TheSupermarketQueue do
  context 'Basic Tests' do
    it { expect(queue_time([], 1)).to eq 0 }
    it { expect(queue_time([5], 1)).to eq 5 }
    it { expect(queue_time([2], 5)).to eq 2 }
    it { expect(queue_time([1, 2, 3, 4, 5], 1)).to eq 15 }
    it { expect(queue_time([1, 2, 3, 4, 5], 100)).to eq 5 }
    it { expect(queue_time([2, 2, 3, 3, 4, 4], 2)).to eq 9 }
    it { expect(queue_time([5, 3, 4], 1)).to eq 12 }
    it { expect(queue_time([10, 2, 3, 3], 2)).to eq 10 }
    it { expect(queue_time([2, 3, 10], 2)).to eq 12 }
    it { expect(queue_time([6, 0, 652, 98, 66, 594], 5)).to eq 652 }
    it { expect(queue_time([0, 54, 8, 98], 2)).to eq 106 }
    it { expect(queue_time([14, 160, 715, 789, 5, 98, 90, 10, 9, 61, 0, 89, 10, 85, 7, 933, 205, 83, 3], 2)).to eq 1978 }
  end
end
