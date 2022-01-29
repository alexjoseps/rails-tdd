require_relative '../../lib/calculator'

describe Calculator, "Testes sobre a calculadora" do
  context '#sum' do
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
end