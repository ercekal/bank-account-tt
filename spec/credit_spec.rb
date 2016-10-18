require 'credit'

describe Credit do
  describe 'initialize' do
    it 'has a balance of a given number' do
      c = Credit.new(30)
      expect(c.credit).to eq 30
    end
  end
end
