RSpec.describe 'Compositions' do
  describe 'Ruby on Rails' do
    it { is_expected.to start_with('Ruby').and end_with('Rails')}
  end

  describe 'Frutas' do
    subject { fruta }
    it { is_expected.to eq('banana').or eq('apple').or eq('orange') }
  end

  # Helper method arbitrário
  # def fruta
  #   %w[banana apple orange].sample
  # end
end