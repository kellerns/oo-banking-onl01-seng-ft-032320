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

  def execute_transaction(transfer)
    if transfer.valid?
      transfer.receiver.balance += @amount
      transfer.sender.balance -+ @amount
    end
  end

  def reverse_transfer

  end




end
