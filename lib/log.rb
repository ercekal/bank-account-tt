require_relative './transaction.rb'
require_relative './account.rb'

class Log

attr_reader :log

  def initialize(transaction_class: Transaction)
    @transaction_class = transaction_class
    @log = ["date || credit || debit || balance"]
  end

  def add_to_log(date, number, balance)
    tr = @transaction_class.new(number)
    if tr.amount >= 0
      add(date.to_s + " || " + tr.amount.to_s + " || || " + balance.to_s)
    else
      add(date.to_s + " || || " + (tr.amount.abs).to_s + " || " + balance.to_s)
    end
  end

  private

  def add(transaction)
    @log << transaction
  end

end
