require_relative './log.rb'
require_relative './transaction.rb'

class Account

  attr_reader :balance, :log

  def initialize(log = Log.new)
    @balance = 0
    @log = log
  end

  def deposit(date, number)
    @balance += number
    @log.add_to_log(date, number, @balance)
  end

  def withdraw(date, number)
    if @balance >= number
      @balance -= number
      @log.add_to_log(date, -number, @balance)
    else
    "You don't have enough funds"
  end
  end

  def print
    @log.log.each { |x| x }
  end

end
