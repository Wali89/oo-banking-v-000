class Transfer
  attr_accessor :sender, :receiver, :status, :transfer_amount
  attr_reader

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @transfer_amount = amount
    @status = 'pending'
  end

  def valid?
    self.sender.valid? && self.receiver
  end
end
