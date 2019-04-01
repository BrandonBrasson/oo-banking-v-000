class BankAccount
  attr_accessor :balance, :status
   attr_reader :name

   def initialize(name)
     @name = name
     @balance = 1000
     @status = "open"
   end

   def deposit(amount)
     self.balance += amount
   end

   def display_balance
     "can display its balance"
   end

   def valid?
     self.balance > 0 && self.status == "open"
   end

   def close_account
     self.status = "closed"
   end
end
