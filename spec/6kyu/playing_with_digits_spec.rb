require __FILE__.gsub(%r{_spec|\/spec}, '')

describe :PlayingWithDigits, tag: '6kyu' do
  context 'dig_pow' do
    context 'basic test' do
      it { expect(dig_pow(89, 1)).to eq 1 }
    end
  end
end
