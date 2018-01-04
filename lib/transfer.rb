class Transfer
  attr_accessor :sender, :receiver, :status, :amount
  attr_reader

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = 'pending'
  end

  def valid?
    self.sender.valid? && self.receiver.valid? && self.status == 'pending'
  end

  def execute_transaction
    if self.valid?
      sender.balance -= self.amount && receiver.balance += self.amount

  end
end
