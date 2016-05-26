require 'transaction'

describe Transaction do

  subject(:transaction) { described_class.new(credit, debit) }
  let(:credit) { double :credit}
  let(:debit) { double :debit}

  describe '#initialize' do
    it 'starts with no credits made' do
      expect(transaction.credit).to be_nil
    end
    it 'starts with no deposits made' do
      expect(transaction.debit).to be_nil
    end
  end

end
