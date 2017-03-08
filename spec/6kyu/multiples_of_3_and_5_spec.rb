require './6kyu/multiples_of_3_and_5'

describe MultiplesOf3And5, tag: '6kyu' do
  context 'solution' do
    context 'basic test' do
      it { expect(MultiplesOf3And5.solution(10)).to eq 23 }
      it { expect(MultiplesOf3And5.solution(20)).to eq 78 }
      it { expect(MultiplesOf3And5.solution(200)).to eq 9168 }
      it { expect(MultiplesOf3And5.solution(10).class).to eq Integer }
    end
  end
end
