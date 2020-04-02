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
    if self.sender.balance >= self.amount && self.status != "complete"
      self.receiver.balance += self.amount
      self.sender.balance -= self.amount
      self.status = "complete"
    end
  end

# binding.pry
end
