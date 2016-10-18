require_relative './log.rb'
require_relative './deposit.rb'
require_relative './credit.rb'

class Account

  attr_reader :balance, :log

  def initialize(log = Log.new)
    @balance = 0
    @log = log
  end

  def deposit(number)
    t = Deposit.new(number)
    @balance += number
    @log.add_deposit(number, @balance)
  end

  def withdraw(number)
    if @balance >= number
      c = Credit.new(number)
      @balance -= number
      @log.add_credit(number, @balance)
    else
    "You don't have enough funds"
  end
  end

  def print
    puts "date || credit || debit || balance"
    @log.log.each { |x| puts x }
  end

end
