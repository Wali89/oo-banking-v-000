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
    if self.status = 'open' && self.balance > 0
      true
    else
      false
    end
  end
end
