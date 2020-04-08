class BankAccount
  attr_reader :name
  attr_accessor :status, :balance, :status

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit(ammount)
    @balance += ammount
  end

  def display_balance
    "Your balance is $#{@balance}."
  end

  def valid?
    if self.status == "open" && self.balance > 0
      true
    else
      false
    end
  end



end
