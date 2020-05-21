class Transfer
  # your code 
  attr_reader :sender, :receiver
  attr_accessor :status, :amount
  
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
    if @sender.balance >= @amount
      @sender.withdraw(@amount) 
      @receiver.deposit(@amount)
      @status = "complete"
    else
      @status = "rejected"
    end
  end
  
  def reverse_transaction
    if @status == "complete"
      @receiver.withdraw(@amount) 
      @sender.deposit(@amount)
      @status = "reversed"
    end
  end
  
end
