require 'colorize'
require 'sounder'

require_relative 'player'
require_relative 'sound'

class HeadsTails
  attr_accessor :player, :total, :bet
  def initialize(player)
    # @player = Player.new
    puts "Welcome to Heads Tails"
    puts "#{player.name} you have a balance of: #{player.wallet.amount}"
    bet(player)
  end

  def bet(player)

    puts "Place your bet or type 'Quit'"
      @bet = gets.to_f
      if @bet == 0
        puts "Goodbye!".colorize(:yellow)
      else
      puts "Heads or Tails
      0) Heads
      1) Tails"
      choice = gets.to_i
      game_choice = rand(1)
      if choice == game_choice
        WinSound.new
        puts "You win!".colorize(:green)
        player.wallet.update_money(@bet, true)
        bet(player)
      else
        puts "Sorry you lose".colorize(:red)
        player.wallet.update_money(@bet, false)
        bet(player)
      end
    end
  end
end
