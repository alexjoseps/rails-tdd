RSpec.describe 'Matcher satisfy' do
  describe 10 do
    it { is_expected.to satisfy { |e| e % 2 == 0 } }
    it { is_expected.to satisfy('be even') { |e| e % 2 == 0 } }
  end
end