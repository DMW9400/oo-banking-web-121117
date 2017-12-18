require "pry"
require "transfer"

class BankAccount
  attr_reader :name
  attr_accessor :balance, :status

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
    # binding.pry
  end

  def deposit(amount)
    @balance += amount

  end
  def display_balance
    "Your balance is $#{@balance}."
  end

  def valid?
    if @balance > 0 && @status == "open"
      true
    else
      false
    end
  end

  def close_account
    @status = "closed"
  end

end

#initialize
      # can initialize a Bank Account (FAILED - 1)
      # initializes with a name (FAILED - 2)
      # always initializes with balance of 1000 (FAILED - 3)
      # always initializes with a status of 'open' (FAILED - 4)
      #
      # can't change its name
      #  #deposit
      #    can deposit money into its account (FAILED - 5)
      #  #display_balance
      #    can display its balance (FAILED - 6)
      #  #valid?
      #    is valid with an open status and a balance greater than 0 (FAILED - 7)
      #  #close_account
      #    can close its account (FAILED - 8)
