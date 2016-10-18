require 'transaction'

describe Transaction do
  describe 'initialize' do
    it 'has a balance of a given number' do
      d = Transaction.new(30)
      expect(d.amount).to eq 30
    end
  end
end
