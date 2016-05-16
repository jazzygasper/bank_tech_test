require 'transaction'

describe Transaction do

  subject(:transaction) { described_class.new }

  describe '#initialize' do
    it 'starts with no transactions' do
      expect(transaction.current_transaction).to be_empty
    end
  end

  describe '#transactions' do
    it 'can deposit' do
      transaction.current_deposit(20, 20)
      expect(transaction.current_transaction).to eq [{:date=>"16/05/2016",
                                                   :credit=>20,
                                                   :balance=>20}]
    end
    it 'can withdrawl' do
      transaction.current_withdrawl(20, 20)
      expect(transaction.current_transaction).to eq [{:date=>"16/05/2016",
                                                   :debit=>20,
                                                   :balance=>20}]
    end

  end

end
