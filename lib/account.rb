require_relative './log.rb'

class Account

  attr_reader :balance, :log

  def initialize
    @balance = 0
    @log = []
  end

  def deposit(number)
    @balance += number
    record_deposit(number)
  end

  def withdraw(number)
    @balance -= number
    record_withdraw(number)
  end

  private

  def record_deposit(number)
    @log << number.to_s + " || || " + @balance.to_s
  end

  def record_withdraw(number)
    @log << "|| || " + number.to_s + " || " + @balance.to_s
  end

end
