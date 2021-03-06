# frozen_string_literal: true

# Models Bank account process
class BankAccount
  OverdraftError = Class.new(StandardError)

  attr_reader :balance

  def initialize(balance = 0)
    @balance = balance
  end

  def deposit(amount)
    raise ArgumentError if amount < 0

    @balance += amount
  end

  def withdraw(amount)
    raise ArgumentError if amount < 0
    raise OverdraftError unless funds_available?(amount)

    @balance -= amount
  end

  def funds_available?(amount)
    balance >= amount
  end

  def empty?
    balance.zero?
  end
end
