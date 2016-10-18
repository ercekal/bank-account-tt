require 'account'
require 'log'
require 'transaction'

describe Log do

subject(:log) { described_class.new}
let (:account) { double :account}

  it 'should store the transactions' do
    log.add_to_log(50, 60)
    expect(log.log).to include("18/10/2016 || 50 || || 60")
  end
end
