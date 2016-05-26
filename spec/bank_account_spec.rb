require 'bank_account'

describe Bank_Account do

  subject(:account) { described_class.new }
  let(:statement) { double :statement }

  describe '#initialize' do
    it 'starts with balance of 0' do
      expect(account.balance).to be_zero
    end
  end

  describe '#balance' do
    it 'can deposit amount to existing balance' do
      expect{ account.deposit(20) }.to change{ account.balance }.by (20)
    end

    it 'can withdraw amount from existing balance' do
      expect{ account.withdrawal(20) }.to change{ account.balance }.by (-20)
    end
  end

  # describe '#print_statement'do
  #   it 'prints statements' do
  #     account.deposit(20)
  #     expect(account.print_statement).to eq [{:date=>"16/05/2016",
  #                                             :debit=>20,
  #                                             :balance=>20}]
  #   end
  # end

end
