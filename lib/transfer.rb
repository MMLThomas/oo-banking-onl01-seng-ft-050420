class Transfer
  # your code 
  attr_reader :sender, :receiver
  attr_accessor :status, :transfer_amount
  
  def initialize(sender, receiver, transfer_amount)
    @sender = sender
    @receiver = receiver
    @transfer_amount = transfer_amount
    @status = "pending"
  end
  
  
  
  
  
end
