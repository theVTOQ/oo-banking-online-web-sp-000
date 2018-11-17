class BankAccount
  attr_accessor :balance
  def deposit(amt)
    balance += amt
  end
end
