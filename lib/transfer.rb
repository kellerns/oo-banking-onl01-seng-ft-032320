class Transfer
  attr_accessor :sender, :receiver, :ammount, :status

  def initialize(sender, receiver, ammount)
    @sender = sender
    @receiver = receiver
    @ammount = ammount
    @status = "pending"
  end

  def valid?
    if @receiver.valid? && @sender.valid?
      true
    else
      false
    end
  end






end
