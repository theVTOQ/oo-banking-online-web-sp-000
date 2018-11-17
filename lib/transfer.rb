class Transfer
  # your code here
  attr_reader :sender, :receiver
  def initialize(sender, receiver)
    @sender = sender
    @receiver = receiver
  end
end
