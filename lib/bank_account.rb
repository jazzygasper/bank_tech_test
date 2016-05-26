require_relative 'statement'

class Bank_Account

  attr_reader :balance, :statement

  def initialize(statement = Statement.new)
    @balance = 0
    @statement = statement
  end

  def deposit(amount)
    @balance += amount
    @statement.current_deposit(amount, @balance)
  end

  def withdrawal(amount)
    @balance -= amount
    @statement.current_withdrawl(amount, @balance)
  end

  def print_statement
  end

end
