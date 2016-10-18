Installation
Clone this repo
$ bundle install
➜  bank_account_tt git:(manual-date) ✗ irb
2.3.0 :001 > require './lib/log.rb'
 => true
2.3.0 :002 > a = Account.new
 => #<Account:0x007fe4bc10ee08 @balance=0, @log=#<Log:0x007fe4bc10ed68 @transaction_class=Transaction, @log=[]>>
2.3.0 :003 > a.deposit("18/09/2016", 50)
 => ["18/09/2016 || 50 || || 50"]
2.3.0 :004 > a.deposit("18/09/2016", 40)
 => ["18/09/2016 || 50 || || 50", "18/09/2016 || 40 || || 90"]
2.3.0 :005 > a.withdraw("18/09/2016", 10)
 => ["18/09/2016 || 50 || || 50", "18/09/2016 || 40 || || 90", "18/09/2016 || || 10 || 80"]
2.3.0 :006 > a.print
date || credit || debit || balance
18/09/2016 || 50 || || 50
18/09/2016 || 40 || || 90
18/09/2016 || || 10 || 80
 => ["18/09/2016 || 50 || || 50", "18/09/2016 || 40 || || 90", "18/09/2016 || || 10 || 80"]
2.3.0 :007 >



Requirements

You should be able to interact with the your code via IRB. (You don't need to implement a command line interface that takes input from STDIN.)
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).
Acceptance criteria

Given a client makes a deposit of 1000 on 10-01-2012 And a deposit of 2000 on 13-01-2012 And a withdrawal of 500 on 14-01-2012 When she prints her bank statement Then she would see

date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
