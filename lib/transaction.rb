class Transaction
  attr_reader :date, :amount

  def initialize(date = Time.new, amount)
    @date = date
    @amount = amount
  end

end
