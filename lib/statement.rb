class Statement
  attr_reader :statement

  def initialize(transaction_history = Statement)
    @transaction_history = transaction_history
  end

  def current_deposit(amount, balance)
    @current_transaction.push({date: Time.now.strftime("%d/%m/%Y"), credit: amount, balance: balance})
    @statement.history.unshift(current_transaction[0])
  end

  def current_withdrawl(amount, balance)
    @current_transaction.push({date: Time.now.strftime("%d/%m/%Y"), debit: amount, balance: balance})
    @statement.history.unshift(current_transaction[0])
  end

end
