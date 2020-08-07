# frozen_string_literal: true

require 'spec_helper'
require 'bank_account'

# #2
RSpec.describe "BankAccount #2" do
  describe 'Deposit' do
    before do
      @prior_balance = 0
      @account = BankAccount.new(@prior_balance)
      @amount = 30
      @previously_empty = @account.empty?

      @account.deposit(@amount)
    end

    it 'increases balance by deposited amount' do
      expect(@account.balance).to eq(@prior_balance + @amount)
    end

    it 'changes account empty status' do
      expect(@previously_empty).not_to eq @account.empty?
    end

    it 'marks bank account as non-empty' do
      expect(@account.empty?).to eq false
    end
  end
end
