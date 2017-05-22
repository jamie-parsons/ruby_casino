class Wallet
  attr_accessor :amount

  def initialize(amount)
    if
      @amount == Int
    else
      puts "Please enter a number"
    end

    if
      @amount > 1000
      puts "You have exceeded the limit"
    elsif
      @amount < 1
      puts "You do not have enough money to play"
    else
    @amount = amount
    end
  end


  def update_money(bet, win = true)
    if win
      @amount += bet
    else
      @amount -= bet
    end
    puts "Your wallet now has #{amount}"
  end

#validation for range
#validation enough money in their wallet
end
