require __FILE__.gsub(%r{_spec|\/spec}, '')

describe :GoodVsEvil do
  let(:tie) { ['Battle Result: ', RESULTS[0]].join }
  let(:good) { ['Battle Result: ', RESULTS[1]].join }
  let(:evil) { ['Battle Result: ', RESULTS[2]].join }

  context 'Basic Tests' do
    it { expect(good_vs_evil('1 0 0 0 0 0', '1 0 0 0 0 0 0')).to eq tie }
    it { expect(good_vs_evil('0 0 0 0 0 10', '0 1 1 1 1 0 0')).to eq good }
    it { expect(good_vs_evil('0 0 0 0 0 10', '0 1 1 1 1 0 0')).to eq good }
    it { expect(good_vs_evil('1 1 1 1 1 1', '1 0 1 1 1 1 1')).to eq tie }
    it { expect(good_vs_evil('0 0 0 1 0 0', '0 0 0 0 1 0 0')).to eq tie }
    it { expect(good_vs_evil('1 1 1 1 1 1', '1 1 1 1 1 1 1')).to eq evil }
  end
end
