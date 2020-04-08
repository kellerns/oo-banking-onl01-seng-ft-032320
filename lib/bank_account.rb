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
    @balance
  end

  def valid?(account)
    if account.status == "open" && account.balance > 0
      true
    end
  end



end
