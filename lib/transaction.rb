class Transaction
  attr_reader :current_transaction

  def initialize
    @current_transaction = []
  end

  def current_deposit(amount, balance)
    @current_transaction = [{date: Time.now.strftime("%d/%m/%Y"), credit: amount, balance: balance}]
  end

  def current_withdrawl(amount, balance)
    @current_transaction = [{date: Time.now.strftime("%d/%m/%Y"), debit: amount, balance: balance}]
  end

end
