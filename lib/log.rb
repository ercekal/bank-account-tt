require_relative './deposit.rb'
require_relative './credit.rb'
require_relative './account.rb'

class Log

attr_reader :log

  def initialize(deposit_class: Deposit, credit_class: Credit)
    @deposit_class = deposit_class
    @credit_class = credit_class
    @log = []
  end

  def add_deposit(number, balance)
    de = @deposit_class.new(number)
    add(time + " || " + de.deposit.to_s + " || || " + balance.to_s)
  end

  def add_credit(number, balance)
    cr = @credit_class.new(number)
    add(time + " || || " + cr.credit.to_s + " || " + balance.to_s)
  end

  private

  def add(transaction)
    @log << transaction
  end

  def time
    t = Time.now
    t.strftime('%d/%m/%Y')
  end

end
