require __FILE__.gsub(%r{_spec|\/spec}, '')

describe :CalculatingWithFunctions do
  context 'static example calculations' do
    it { expect(seven(times(five))).to eq 35 }
    it { expect(zero(times(five))).to eq 0 }
    it { expect(four(plus(nine))).to eq 13 }
    it { expect(eight(minus(three))).to eq 5 }
    it { expect(six(divided_by(two))).to eq 3 }
  end
end
