require_relative './log.rb'
require_relative './transaction.rb'

class Account

  attr_reader :balance, :log

  def initialize
    @balance = 0
    @log = Log.new
  end

  def deposit(number)
    @balance += number
    record_deposit(number)
  end

  def withdraw(number)
    @balance >= number ? @balance -= number : "You don't have enough funds"
    record_withdraw(number)
  end

  def print
    @log.log.unshift("date || credit || debit || balance")
    @log.log.each { |x| x }
  end

  private

  def record_deposit(number)
    @log.log << time + " || " + number.to_s + " || || " + @balance.to_s
  end

  def record_withdraw(number)
    @log.log << time + " || || " + number.to_s + " || " + @balance.to_s
  end

  def time
    t = Time.now
    t.strftime('%d/%m/%Y')
  end
  
end
