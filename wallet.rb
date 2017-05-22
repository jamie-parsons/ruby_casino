class Wallet
  attr_accessor :amount

  def initialize(amount)
    @amount = amount
  end

  def update_money(bet, win = true)
    if win
      @amount += bet
    else
      @amount -= bet
    end
    puts "Your wallet now has #{amount}"
  end

end
