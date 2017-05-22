require_relative 'player'

class HeadsTails
  attr_accessor :player, :total, :bet
  def initialize(player)
    # @player = Player.new
    puts "Welcome to Heads Tails"
    puts "#{player.name} you have a balance of: #{player.wallet.amount}"
    bet(player)
  end

  def bet(player)
    puts "How much would you like to bet?"
    @bet = gets.to_i
    puts "Heads or Tails
          0) Heads
          1) Tails"
    choice = gets.to_i
    game_choice = rand(1)
    if choice == game_choice
      puts "You win!"
      player.wallet.update_money(@bet, true)
    else
      puts "Sorry you lose"
      player.wallet.update_money(@bet, false)
    end
  end
end
