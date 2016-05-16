require_relative 'transaction'

class Bank_Account

  attr_reader :balance, :transaction

  def initialize(transaction = Transaction.new)
    @balance = 0
    @transaction = transaction
  end

  def deposit(amount)
    @balance += amount
    @transaction.current_deposit(amount, @balance)
  end

  def withdraw(amount)
    @balance -= amount
    @transaction.current_withdrawl(amount, @balance)
  end

  def print_statement

  end

end
