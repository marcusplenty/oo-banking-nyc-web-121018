class BankAccount
  attr_accessor :balance, :status
  def initialize(name)
    @name = name
    @balance = 25
    @status = "open"

  end 
end
