# frozen_string_literal: true

require 'spec_helper'
require 'bank_account'

RSpec.describe BankAccount do
  subject(:account) { described_class.new(prior_balance) }

  describe 'Deposit' do
    let(:prior_balance) { 0 }
    let(:amount) { 30 }

    it 'increases balance by deposited amount' do
      account.deposit(amount)

      expect(account.balance).to eq(amount + prior_balance)
    end

    it 'marks bank account as non-empty' do
      # Assert for status, maybe raise?
      expect(account.empty?).to eq true

      account.deposit(amount)

      expect(account.empty?).to eq false
    end
  end

  describe 'Withdraw' do
    let(:prior_balance) { 100 }
    let(:amount) { 100 }

    it 'decreases balance by withdrawn amount' do
      account.withdraw(amount)

      expect(account.balance).to eq(prior_balance - amount)
    end

    it 'marks bank account as empty' do
      # Assert for status, maybe raise?
      expect(account.empty?).to eq false

      account.withdraw(amount)

      expect(account.empty?).to eq true
    end
  end
end
