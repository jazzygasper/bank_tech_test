require 'transaction'

describe Transaction do

  subject(:transaction) { described_class.new("10/01/2012", 1000) }

  describe '#initialize' do
    it {expect(transaction.date).to eq ("10/01/2012")}
    it {expect(transaction.amount).to eq(1000)}
  end

end
