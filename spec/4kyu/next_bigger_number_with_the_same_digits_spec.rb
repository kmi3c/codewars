require __FILE__.gsub(%r{_spec|\/spec}, '')

def test(*args)
  it { expect(next_bigger(args[0])).to eq args[1] }
end

describe :next_bigger_number_with_the_same_digits, broken: true do
  context 'static next_bigger test' do
    test(0, -1)
    test(12, 21)
    test(513, 531)
    test(2017, 2071)
    test(414, 441)
    test(9, -1)
    test(111, -1)
    test(531, -1)
    test(414, 441)
    # test(59_884_848_459_853, 59_884_848_483_559)
  end
end
