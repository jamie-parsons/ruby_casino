require_relative 'player'
require_relative 'deck'
require_relative 'card'

class HeadsTails
  attr_accessor :player, :total, :bet
  def initialize(player)
    # @player = Player.new
    puts "Welcome to High Low!"
    puts "#{player.name} you have a balance of: #{player.wallet.amount}"
    bet(player)
  end

  def bet(player)
    puts "How much would you like to bet?"
    @bet = gets.to_i
    puts "Here is the card"
    Deck.new
    p
    puts "Higher or lower?
          0) Higher
          1) Lower"
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
