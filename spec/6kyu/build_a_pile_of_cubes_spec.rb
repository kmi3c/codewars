require __FILE__.gsub(%r{_spec|\/spec}, '')

def test(*args)
  it "should find '#{args[1]}' for '#{args[0]}' cubes" do
    expect(find_nb(*args[0])).to eq args[1]
  end
end

describe :BuildAPileOfCubes  do
  context 'Basic cubes test' do
    test(9, 2)
    test(4_183_059_834_009, 2022)
    test(24_723_578_342_962, -1)
    test(135_440_716_410_000, 4824)
    test(40_539_911_473_216, 3568)
  end
end
