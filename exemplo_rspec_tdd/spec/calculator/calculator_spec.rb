require_relative '../../lib/calculator'

describe Calculator, "Testes sobre a calculadora" do
  before(:all) do
    puts 'ANTES de executar os todos os testes'
  end

  after(:all) do
    puts 'DEPOIS de executar os todos os testes'
  end

  before(:each) do
    puts 'ANTES de executar cada teste'
  end

  after(:each) do
    puts 'DEPOIS de executar cada teste'
  end

  describe '#sum' do
    xit 'with positive numbers' do
      result = subject.sum(5,5)
  
      expect(result).to eq(10)
    end
  
    example 'with negative and positive number' do
      result = subject.sum(-10, 5)
  
      expect(result).to eq(-5)
    end

    specify 'with negative numbers' do 
      result = subject.sum(-5, -10)

      expect(result).to eq(-15)
    end
  end

  describe '#divide' do
    it 'with positive numbers' do
      result = subject.divide(10, 5)

      expect(result).to eq 2
    end

    it 'with negative and positive number' do
      result = subject.divide(-10, 2)

      expect(result).to eq -5
    end

    it 'zero divided by a number' do
      result = subject.divide(0, 10)

      expect(result).to eq 0
    end

    it 'a number divided by zero' do
      expect{ subject.divide(10, 0) }.to raise_exception
      expect{ subject.divide(10, 0) }.to raise_error(ZeroDivisionError)
      expect{ subject.divide(10, 0) }.to raise_error(ZeroDivisionError, 'divided by 0')
      expect{ subject.divide(10, 0) }.to raise_error('divided by 0')
      expect{ subject.divide(10, 0) }.to raise_error(/divided/)
    end
  end
end