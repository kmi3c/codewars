require __FILE__.gsub(%r{_spec|\/spec}, '')

describe :RgbToHexConversion do
  context 'static example calculations' do
    it { expect(rgb(255, 255, 255)).to eq 'FFFFFF' }
    it { expect(rgb(255, 255, 300)).to eq 'FFFFFF' }
    it { expect(rgb(0, 0, 0)).to eq '000000' }
    it { expect(rgb(0, 0, -20)).to eq '000000' }
    it { expect(rgb(148, 0, 211)).to eq '9400D3' }
    it { expect(rgb(1, 1, 1)).to eq '010101' }
  end
end
