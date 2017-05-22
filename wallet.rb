class Wallet
  attr_accessor :amount

  def initialize
    @amount = validate_amount
  end

<<<<<<< HEAD
  def validate_amount
    puts "How much are you playing with?"
    amount = gets.strip.to_f
    if amount > 1000
=======
    if
    @amount > 1000
>>>>>>> changes
      puts "You have exceeded the limit"
      validate_amount
    elsif amount < 1
      puts "You do not have enough money to play"
      validate_amount
    end
      amount
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
