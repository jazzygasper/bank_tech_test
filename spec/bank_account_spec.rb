require 'bank_account'

describe Bank_Account do

  subject(:account) { described_class.new(statement) }
  let(:statement) { double :statment, history: [] }

  describe '#initialize' do
    it 'starts with balance of 0' do
      expect(account.balance).to be_zero
    end
    # it 'starts with empty transaction' do
    #   expect(account.transaction).to be_empty
    # end
  end

  describe '#balance' do
    it "can deposit amount to existing balance" do
      expect{ account.deposit(20) }.to change{ account.balance }.by (20)
    end

    it "can withdraw amount from existing balance" do
      expect{ account.withdraw(20) }.to change{ account.balance }.by (-20)
    end
  end


  describe '#print_statement'do
    it 'prints statements' do
      expect(account.print_statement).to eq([])
    end
  end

end
