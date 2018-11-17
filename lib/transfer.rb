class Transfer
  # your code here
  attr_reader :sender, :receiver, :status, :transfer_amount

  def initialize(sender, receiver, transer_amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
  end

  def valid?
    @sender.valid? && @receiver.valid?
  end

  def execute_transaction
    if !valid?
      if !@sender.valid?
        status = "rejected"
        return "Transaction rejected. Please check your account balance."
      end
    elsif @status != "complete"
      @sender.balance -= @transfer_amount
      @receiver.deposit(@transfer_amount)
      @status = "complete"
    end
  end

  def reverse_transfer
    if @status == "complete"
      @sender.deposit(@transfer_amount)
      @receiver.balance -= @transfer_amount
    end
  end
end
