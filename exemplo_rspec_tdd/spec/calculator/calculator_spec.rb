require_relative '../../lib/calculator'

describe Calculator do
  subject = described_class.new

  it 'sum of two positive numbers' do
    result = subject.sum(5,5)

    expect(result).to eq(10)
  end

  example 'sum of one positive number and other negative number' do
    result = subject.sum(-10, 5)

    expect(result).to eq(-5)
  end
end