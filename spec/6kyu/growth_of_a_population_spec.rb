require __FILE__.gsub(%r{_spec|\/spec}, '')

describe :GrowthOfAPopulation do
  describe('nb_year') do
    context 'Basic tests' do
      it { expect(nb_year(1500, 5, 100, 5000)).to eq 15 }
      it { expect(nb_year(1_500_000, 2.5, 10_000, 2_000_000)).to eq 10 }
      it { expect(nb_year(1_500_000, 0.25, 1000, 2_000_000)).to eq 94 }
    end
  end
end
