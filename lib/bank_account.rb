require_relative 'statement'
require_relative 'transaction'

class Bank_Account

  attr_reader :balance, :transaction

  def initialize(transaction = Transaction.new)
    @balance = 0
    @statement = Statement.new
    @transaction = transaction
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def print_statement
    @statement.history
  end

end
