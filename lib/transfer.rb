class Transfer
  attr_reader :sender , :receiver, :status
  attr_accessor :amount
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
    if self.valid?
      self.sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    else
      "X"
    end 
    
  end 
end
