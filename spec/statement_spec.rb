require 'statement'

describe Statement do

  subject(:statement) { described_class.new }

  describe '#initialize' do
    it 'starts with empty transaction history' do
      expect(statement.history).to be_empty
    end
  end
end
