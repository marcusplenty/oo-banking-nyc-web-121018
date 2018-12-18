class Transfer
  attr_accessor :amount, :sender , :receiver, :status
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  def valid?
    @sender.valid? && @receiver.valid?
  end 
  
  def execute_transaction
    if valid? && @status == "pending"
      self.sender.balance -= self.amount
      @receiver.balance += @amount
      @status = "complete"
    else 
      @status = "rejected"
      return "Transaction rejected. Please check your account balance."
    end 
    
  end 
end
