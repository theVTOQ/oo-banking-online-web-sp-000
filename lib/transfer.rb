class Transfer
  # your code here
  attr_reader :sender, :receiver, :status, :transfer_amount

  def initialize(sender, receiver, transer_amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
  end



end
