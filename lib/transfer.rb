require 'pry'

class Transfer
  # your code here
  attr_reader :sender, :receiver
  attr_accessor :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount  = amount
    @status = "pending"
  end

  def valid?
    self.sender.valid? && self.receiver.valid?
  end

  def execute_transaction
    if sender.balance >= transfer.amount
      receiver.balance += sender.amount
    end
  end

# binding.pry
end
