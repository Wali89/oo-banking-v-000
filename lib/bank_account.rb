class BankAccount
  attr_accessor :status, :balance
  attr_reader :name

  def initialize(name)
    @name = name
    @balance = 1000
    @status = 'open'
  end

  def deposit(amount)
    self.balance += amount
  end

  def display_balance
    "Your balance is $#{self.balance}."

  end

  def valid?
    if self.status = 'closed'
      false
    elsif self.status = 'open'
      true
    else
      false
    end
  end

  def close_account
    self.status = 'closed'
  end

end
