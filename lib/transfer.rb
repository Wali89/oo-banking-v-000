class Transfer
  attr_accessor :sender, :reciever, :status, :transfer_amount
  attr_reader

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @transfer_amount = amount
    @status = 'pending'
  end
end
