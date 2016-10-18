require_relative './log.rb'
require_relative './transaction.rb'

class Account

  attr_reader :balance, :log

  def initialize(log = Log.new)
    @balance = 0
    @log = log
  end

  def deposit(number)
    @balance += number
    @log.add_to_log(number, @balance)
  end

  def withdraw(number)
    if @balance >= number
      @balance -= number
      @log.add_to_log(-number, @balance)
    else
    "You don't have enough funds"
  end
  end

  def print
    puts "date || credit || debit || balance"
    @log.log.each { |x| puts x }
  end

end
