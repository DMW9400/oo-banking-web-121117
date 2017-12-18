require "pry"
require "bank_account"
class Transfer

  attr_accessor :status, :sender, :receiver, :amount

  def initialize(sender,receiver,amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    if self.receiver && self.sender && sender.valid? && receiver.valid?
      true
    else
      false
    end
  end

  def execute_transaction
    if @sender.balance >= self.amount && self.receiver.valid? && self.sender.valid? && @status == "pending"
      @sender.balance = @sender.balance - self.amount
      @receiver.balance = @receiver.balance + self.amount
      self.status = "complete"
    else
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end

end
