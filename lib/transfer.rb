class Transfer
  attr_accessor :sender, :receiver, :amount, :status

   def initialize(sender, receiver, amount)
     @sender = sender
     @receiver = receiver
     @amount = amount
     @status = "pending"
   end

   def valid?
     @sender.valid? && @receiver.valid? ? true : false
   end


   def reverse_transfer
    if @status == "complete"
      @sender.balance += amount
      self.receiver.balance -= amount
      @status = "reversed"
    end
  end
end
