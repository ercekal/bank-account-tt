require 'account'
require 'log'

describe Account do

  describe 'balance' do
    it 'should have 0 balance when created' do
      account = Account.new
      expect(account.balance).to eq(0)
    end
  end

  describe 'deposit' do
    it 'should increase balance in the given amount' do
      account = Account.new
      account.deposit(50)
      expect(account.balance).to eq(50)
    end
  end

  describe 'withdraw' do
    it 'should reduce balance in the given amount' do
      account = Account.new
      account.deposit(50)
      account.withdraw(30)
      expect(account.balance).to eq(20)
    end
  end

  describe 'deposit' do
    it 'should update the log class' do
      account = Account.new
      account.deposit(50)
      expect(account.log.log).to include("18/10/2016 || 50 || || 50")
    end
  end

  describe 'withdraw' do
    it 'should update the log class' do
      account = Account.new
      account.deposit(50)
      account.withdraw(10)
      expect(account.log.log).to include("18/10/2016 || || 10 || 40")
    end
  end

  describe 'print' do
    it 'should print the details of the given account' do
      account = Account.new
      account.deposit(50)
      account.withdraw(10)
      expect(account.print).to include("18/10/2016 || 50 || || 50", "18/10/2016 || || 10 || 40")
    end
  end
end
