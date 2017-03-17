require __FILE__.gsub(%r{_spec|\/spec}, '')

def test(*args)
  it { expect(kata_function(args[0..args.size - 1])).to eq args[args.size - 1] }
end

describe :kata_function do
  context 'static kata_function test' do
    test(0, 0)
  end
end
