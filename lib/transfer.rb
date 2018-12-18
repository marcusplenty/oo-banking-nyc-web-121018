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
    if self.valid? && @status != "complete"
      self.sender.balance -= self.amount
      @receiver.balance += @amount
      @status = "complete"
    else 
      
    end 
    
  end 
end
