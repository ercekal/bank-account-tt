require 'deposit'

describe Deposit do
  describe 'initialize' do
    it 'has a balance of a given number' do
      d = Deposit.new(30)
      expect(d.deposit).to eq 30
    end
  end
end
