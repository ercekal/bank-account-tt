require 'account'
require 'log'

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
    expect(account.log).to include("50 || || 50")
  end
end

# describe 'print' do
#   it 'should print the details of the given account' do
#
#   end
# end
