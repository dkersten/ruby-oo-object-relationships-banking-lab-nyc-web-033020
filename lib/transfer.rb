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
    
  end


  def bank_accounts
    BankAccount.all.select do |accounts|
      accounts.name == self
    end
  end

binding.pry
"something"
end
