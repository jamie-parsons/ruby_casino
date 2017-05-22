class Wallet
  attr_accessor :amount

  def initialize(amount)
    @amount = amount
  end

  def update_money(bet, multiplier, win = true)
    if win
      @amount += bet * multiplier
    else
      @amount -= bet * multiplier
    end
    puts "Your wallet now has #{amount}"
  end

end
