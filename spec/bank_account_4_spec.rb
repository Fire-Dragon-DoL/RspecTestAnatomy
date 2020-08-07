# frozen_string_literal: true

require 'spec_helper'
require 'bank_account'

# #4
RSpec.describe BankAccount do
  subject(:account) { described_class.new(prior_balance) }

  describe 'Deposit' do
    let(:prior_balance) { 0 }
    let(:amount) { 30 }
    let(:new_balance) { account.deposit(amount) }

    it 'increases balance by deposited amount' do
      expect(new_balance).to eq(amount + prior_balance)
    end
  end

  describe 'Withdraw' do
    let(:prior_balance) { 100 }
    let(:amount) { 100 }
    let(:new_balance) { account.withdraw(amount) }

    it 'decreases balance by withdrawn amount' do
      expect(new_balance).to eq(amount - prior_balance)
    end
  end
end
