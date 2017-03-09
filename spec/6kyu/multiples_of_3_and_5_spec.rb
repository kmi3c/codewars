require __FILE__.gsub(/_spec|\/spec/, '')

describe :MultiplesOf3And5, tag: '6kyu' do
  context 'solution' do
    context 'basic test' do
      it { expect(solution(10)).to eq 23 }
      it { expect(solution(20)).to eq 78 }
      it { expect(solution(200)).to eq 9168 }
      it { expect(solution(10).class).to eq Fixnum }
    end
  end
end
