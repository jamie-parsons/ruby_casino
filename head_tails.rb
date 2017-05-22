require_relative 'player'

class HeadsTails
  attr_accessor :player, :total, :bet
  def initialize(player)
    # @player = Player.new
    puts "Welecome to Heads Tails"
    puts "#{player.name} you have a balance of: #{player.wallet.amount}"
    bet(player)
  end

  def bet(player)
    puts "How much would you like to bet?"
    @bet = gets.to_i
    start_game
  end

  def start_game
    puts "Heads or Tails
          0) Heads
          1) Tails"
    choice = gets.to_i
    game_choice = rand(1)
    if choice == game_choice
      @total = @bet * 2
      puts "You win!"
      player.wallet.add_money(@total, 'subtract')
      update_wallet
    else
      puts "Sorry you lose"
      @total = @bet * 1
      update_wallet
    end
  end

  # def update_wallet
  #   puts @total
  #   player.wallet.amount = player.wallet.amount + @total
  #   puts "This is your current wallet #{player.wallet.amount}"
  # end

end
