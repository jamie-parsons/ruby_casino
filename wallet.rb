class Wallet
  attr_accessor :amount

  def initialize(amount)
    @amount = amount
  end

  def add_money(bet, multiplier)
    @amount += bet * multiplier
  end
end
