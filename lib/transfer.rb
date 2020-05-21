class Transfer
  # your code 
  attr_reader :sender, :receiver
  attr_accessor :status, :transfer_amount
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  
  
  
  
end
