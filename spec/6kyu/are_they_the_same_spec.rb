require __FILE__.gsub(%r{_spec|\/spec}, '')

def test(*args)
  it { expect(comp(*args[0..1])).to eq args[2] }
end

describe :are_they_the_same do
  context 'static are_they_the_same test' do
    test(
      [121, 144, 19, 161, 19, 144, 19, 11],
      [11 * 11, 121 * 121, 144 * 144, 19 * 19, 161 * 161, 19 * 19, 144 * 144, 19 * 19],
      true
    )
    test([], [], true)
    test([], nil, false)
    test(nil, [], false)
    test(nil, nil, false)
  end
end
