require 'colorize'
require 'sounder'

require_relative 'player'
require_relative 'dice'
require_relative 'sound'

class SnakeEyes
  attr_accessor :player, :bet
  def initialize(player)
    # @player = Player.new
    puts "Welecome to Snake Eyes"
    puts "#{player.name} you have a balance of: #{player.wallet.amount}"
    bet(player)
  end

  def bet(player)
    puts "How much would you like to bet?
          Or type quit to exit."
    @bet = gets.to_f
    if @bet == 0
      puts "Goodbye!".colorize(:yellow)
    else
    puts "You roll the Dice"
    roll = Dice.new
    roll.show_dice
      if roll.sum == 2
        WinSound.new
        puts "You win #{@bet * 10}!".colorize(:green)
        @bet = @bet * 10
        player.wallet.update_money(@bet, true)
        bet(player)
      else
        puts "\nSorry you lost #{@bet/2}".colorize(:red)
        @bet = @bet / 2
        player.wallet.update_money(@bet, false)
        bet(player)
      end
    end
  end
end
