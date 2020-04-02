require 'pry'

class BankAccount
    attr_reader :name
    attr_accessor :balance, :status, :transfer

    @@all_accounts = []

    def initialize(name)
        @name = name
        @balance = 1000
        @status = "open"

        @@all_accounts << self
    end

    def deposit(money_deposited)
        @balance += money_deposited
    end

    def display_balance
        "Your balance is $#{@balance}."
    end

    def valid?
        if @status == "open" && @balance > 0
            true
        else
            false
        end
    end

    def close_account
        if self.valid?
            @status = "closed"
        end

    end

    def self.all
        @@all_accounts
    end
end

binding.pry
"something"