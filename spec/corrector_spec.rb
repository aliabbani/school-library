require_relative '../corrector'

describe 'new test for Corrector class' do
  before :each do
    @c1 = Corrector.new
  end

  context '#correct_name' do
    it 'Check if name is changed to capitals' do
      name = @c1.correct_name('faizan')
      expect(name).to eq 'Faizan'
    end

    it 'Reduce name to 10 characters' do
      name = @c1.correct_name('faizan zahid')
      expect(name).to eq 'Faizan zah'
    end
  end
end
