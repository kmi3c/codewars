require __FILE__.gsub(%r{_spec|\/spec}, '')

describe :TakeATenMinuteWalk do
  context 'Basic Tests' do
    it { expect(isValidWalk(%w(n s n s n s n s n s))).to be true }
    it { expect(!isValidWalk(%w(w e w e w e w e w e w e))).to be true }
    it { expect(!isValidWalk(['w'])).to be true }
    it { expect(!isValidWalk(%w(n n n s n s n s n s))).to be true }
  end
end
