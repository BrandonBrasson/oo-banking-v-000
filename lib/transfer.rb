class Transfer
  attr_accessor :sender, :receiver, :amount, :status

    def initialize(name)
      @sender = sender
      @receiver = receiver
      @status = "pending"
      @amount = amount
    end

    def valid?
      sender.valid? && receiver.valid?
    end





end
