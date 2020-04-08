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

  def execute_transaction
    if self.valid?
      self.receiver.balance += self.amount
      self.sender.balance -= self.amount
    end
    self.status = "executed"
  end

  def reverse_transfer
    if self.status == "executed"
      self.receiver.balance -= self.amount
      self.sender.balance += self.amount
    end
  end




end
