require_relative './transaction.rb'
require_relative './account.rb'

class Log

attr_reader :log

  def initialize(transaction_class: Transaction)
    @transaction_class = transaction_class
    @log = []
  end

  def add_to_log(number, balance)
    tr = @transaction_class.new(number)
    if tr.amount >= 0
      add(time + " || " + tr.amount.to_s + " || || " + balance.to_s)
    else
      add(time + " || || " + (tr.amount.abs).to_s + " || " + balance.to_s)
    end
  end

  private

  def add(transaction)
    @log << transaction
  end

  def time
    Time.now.strftime("%d/%m/%Y")
  end
end
