class Transfer
  attr_accessor :sender, :receiver, :amount, :status, :count

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
    @count = 0
  end

  def valid?
    if @receiver.valid? && @sender.valid?
      true
    else
      false
    end
  end

  def execute_transaction
    if self.valid? && self.count = 0
      self.receiver.balance += self.amount
      self.sender.balance -= self.amount
    end
    self.status = "complete"
    self.count += 1
  end

  def reverse_transfer
    if self.status == "complete"
      self.receiver.balance -= self.amount
      self.sender.balance += self.amount
    end
  end




end
