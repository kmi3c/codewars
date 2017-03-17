require __FILE__.gsub(%r{_spec|\/spec}, '')

def test(*args)
  it { expect(next_bigger(*args[0..args.size - 1])).to eq args[args.size - 1] }
end

describe :next_bigger_number_with_the_same_digits, broken: true do
  context 'static next_bigger test' do
    test(0, 0)
  end
end
