RSpec.describe 'Matcher ponto flutuante' do
  describe 12.5 do
    it { is_expected.to be_within(0.5).of(12) }
  end

  describe 12 do
    it { is_expected.to be_within(0.5).of(12) }
  end

  describe 11.5 do
    it { is_expected.to be_within(0.5).of(12) }
  end
end