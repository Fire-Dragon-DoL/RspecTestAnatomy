# frozen_string_literal: true

require 'spec_helper'
require 'bank_account'

# #3
RSpec.describe BankAccount do
  subject(:account) { described_class.new(prior_balance) }

  describe 'Deposit' do
    let(:prior_balance) { 0 }
    let(:amount) { 30 }

    it 'increases balance by deposited amount' do
      account.deposit(amount)

      expect(account.balance).to eq(amount + prior_balance)
    end

    it 'changes account empty status' do
      previously_empty = account.empty?

      account.deposit(amount)

      expect(previously_empty).not_to eq account.empty?
    end

    it 'marks bank account as non-empty' do
      account.deposit(amount)

      expect(account.empty?).to eq false
    end
  end
end
