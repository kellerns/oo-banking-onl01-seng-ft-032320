class Transfer
  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, mount)
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
      @receiver.balance += @amount
      @sender.balance -+ @amount
  end

  def reverse_transfer

  end




end
