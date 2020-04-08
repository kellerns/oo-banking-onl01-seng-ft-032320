class Transfer
  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    if @receiver.valid? && @sender.valid?
      true
    else
      false
    end
  end

  def execute_transaction(transaction)
    if transaction.valid?
      @receiver.balance += @amount
      @sender.balance -= @amount
    end
    @status = "executed"
  end

  def reverse_transfer(transaction)
    if transaction.status == "executed"
      @receiver.balance -= @amount
      @sender.balance += @amount
    end
  end




end
