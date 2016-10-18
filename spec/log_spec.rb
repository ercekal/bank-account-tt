require 'account'
require 'log'
require 'transaction'

describe Log do

subject(:log) { described_class.new}
let (:account) { double :account}

  # it 'should store the transactions' do
  #   account.deposit(50)
  #   expect(account.log.log).to include("18/10/2016 || 50 || || 50")
  # end
end
