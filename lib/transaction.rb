class Transaction
  attr_reader :date, :credit, :debit

  def initialize(credit, debit)
    @date = Time.now.strftime("%d/%m/%Y")
    @credit = nil
    @debit = nil
  end

end
