require __FILE__.gsub(%r{_spec|\/spec}, '')

def test(*args)
  it { expect(fortune(*args[0..args.size - 2])).to eq args[args.size - 1] }
end

describe :BankersPlan do
  context 'Basic tests' do
    test(100_000, 1, 2000, 15, 1, true)
    test(100_000, 1, 9185, 12, 1, false)
    test(100_000_000, 1, 100_000, 50, 1, true)
    test(100_000_000, 1.5, 10_000_000, 50, 1, false)
    test(100_000_000, 5, 1_000_000, 50, 1, true)
    test(9_959_885, 10, 664_928, 19, 1, true)
    test(8_060_991, 5, 538_363, 19, 3, true)
  end
end
