require __FILE__.gsub(%r{_spec|\/spec}, '')

describe :CalculatingWithFunctions do
  context 'static example calculations' do
    it { expect(seven(times(five))).to eq 35 }
    it { expect(zero(times(five))).to eq 0 }
    it { expect(four(plus(nine))).to eq 13 }
    it { expect(eight(minus(three))).to eq 5 }
    it { expect(six(divided_by(two))).to eq 3 }
  end
  # Eval is Evil I know ;_( It's siute from CW
  describe 'random calculations' do
    numbers = %w(zero one two three four five six seven eight nine)

    context 'add' do
      4.times do
        num1 = numbers.sample
        num2 = numbers.sample
        it { expect(eval(num1 + '(plus(' + num2 + '))')).to eq numbers.index(num1) + numbers.index(num2) }
      end
    end

    context 'subtract' do
      4.times do
        num1 = numbers.sample
        num2 = numbers.sample
        it { expect(eval(num1 + '(minus(' + num2 + '))')).to eq numbers.index(num1) - numbers.index(num2) }
      end
    end

    context 'multiply' do
      4.times do
        num1 = numbers.sample
        num2 = numbers.sample
        it { expect(eval(num1 + '(times(' + num2 + '))')).to eq numbers.index(num1) * numbers.index(num2) }
      end
    end

    context 'divide' do
      4.times do
        num1 = numbers.sample
        num2 = numbers.slice(1, 9).sample # don't divide by 0
        it { expect(eval(num1 + '(divided_by(' + num2 + '))')).to eq numbers.index(num1).to_f / numbers.index(num2) }
      end
    end
  end
end
