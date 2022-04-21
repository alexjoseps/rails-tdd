RSpec.describe 'Matchers para coleções' do
  describe [1,3,5] do
    it { is_expected.to all(be_odd) }
  end
end