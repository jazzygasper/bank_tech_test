require_relative 'transaction'

class Statement
  attr_reader :history

  def initialize(transaction_class = Transaction)
    @history = []
  end

end
