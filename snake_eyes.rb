require_relative 'player'
require_relative 'dice'

class SnakeEyes
  attr_accessor :player, :bet
  def initialize(player)
    # @player = Player.new
    puts "Welecome to Snake Eyes"
    puts "#{player.name} you have a balance of: #{player.wallet.amount}"
    bet(player)
  end

  def bet(player)
    puts "How much would you like to bet?"
    @bet = gets.to_f
    puts "You roll the Dice"
    roll = Dice.new
    roll.show_dice

    if roll.sum == 2
      puts "You win!"
      @bet = @bet * 10
      player.wallet.update_money(@bet, true)
    else
      puts "\nSorry you lose"
      @bet = @bet / 2
      player.wallet.update_money(@bet, false)
    end
  end
end
