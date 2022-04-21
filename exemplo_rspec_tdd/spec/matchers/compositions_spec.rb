RSpec.describe 'Compositions' do
  describe 'Ruby on Rails' do
    it { is_expected.to start_with('Ruby').and end_with('Rails')}
  end

  describe %w[banana apple orange].sample, 'Frutas' do
    it { is_expected.to eq('banana').or eq('apple').or eq('orange') }
  end
end