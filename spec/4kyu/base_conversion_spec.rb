require __FILE__.gsub(%r{_spec|\/spec}, '')

bin = '01'
oct = '01234567'
dec = '0123456789'
hex = '0123456789abcdef'
allow = 'abcdefghijklmnopqrstuvwxyz'
allup = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
alpha = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'

def test(*args)
  it { expect(convert(*args[0..2])).to eq args[3] }
end

describe :BaseConversion, broken: true do
  context 'Basic purely numeric test' do
    test('15', dec, bin, '1111')
    test('15', dec, oct, '17')
    test('1010', bin, dec, '10')
    test('1010', bin, hex, 'a')
  end

  context 'Basic alphanumeric tests' do
    test('0', dec, alpha, 'a')
    test('27', dec, allow, 'bb')
    test('hello', allow, hex, '320048')
    test('SAME', allup, allup, 'SAME')
  end
end
