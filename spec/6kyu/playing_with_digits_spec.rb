require __FILE__.gsub(%r{_spec|\/spec}, '')

describe :PlayingWithDigits, tag: '6kyu' do
  context 'dig_pow' do
    context 'basic test' do
      it { expect(dig_pow(89, 1)).to eq 1 }
      it { expect(dig_pow(92, 1)).to eq(-1) }
      it { expect(dig_pow(695, 2)).to eq 2 }
      it { expect(dig_pow(46_288, 3)).to eq 51 }
      it { expect(dig_pow(46_288, 5)).to eq(-1) }
      it { expect(dig_pow(114, 3)).to eq 9 }
      it { expect(dig_pow(135, 1)).to eq 1 }
      it { expect(dig_pow(175, 1)).to eq 1 }
      it { expect(dig_pow(518, 1)).to eq 1 }
      it { expect(dig_pow(598, 1)).to eq 1 }
      it { expect(dig_pow(1306, 1)).to eq 1 }
      it { expect(dig_pow(2427, 1)).to eq 1 }
      it { expect(dig_pow(2_646_798, 1)).to eq 1 }
      it { expect(dig_pow(3_456_789, 1)).to eq(-1) }
      it { expect(dig_pow(3_456_789, 5)).to eq(-1) }
      it { expect(dig_pow(198, 1)).to eq 3 }
      it { expect(dig_pow(249, 1)).to eq 3 }
      it { expect(dig_pow(1377, 1)).to eq 2 }
      it { expect(dig_pow(1676, 1)).to eq 1 }
      it { expect(dig_pow(695, 2)).to eq 2 }
      it { expect(dig_pow(1878, 2)).to eq 19 }
      it { expect(dig_pow(7388, 2)).to eq 5 }
      it { expect(dig_pow(47_016, 2)).to eq 1 }
      it { expect(dig_pow(542_186, 2)).to eq 1 }
      it { expect(dig_pow(261, 3)).to eq 5 }
      it { expect(dig_pow(1385, 3)).to eq 35 }
      it { expect(dig_pow(2697, 3)).to eq 66 }
      it { expect(dig_pow(6376, 3)).to eq 10 }
      it { expect(dig_pow(6714, 3)).to eq 1 }
      it { expect(dig_pow(63_760, 3)).to eq 1 }
      it { expect(dig_pow(63_761, 3)).to eq 1 }
      it { expect(dig_pow(132_921, 3)).to eq 4 }
      it { expect(dig_pow(10_383, 6)).to eq 12_933 }
    end
  end
end
