require 'pry'

require_relative 'player'
require_relative 'deck'
require_relative 'card'

class HighLow
  attr_accessor :player, :bet, :deck, :card_1best, :card_2best
  def initialize(player)
    # @player = Player.new
    @deck = Deck.new.shuffle_cards
    puts "Welcome to High Low!"
    puts "#{player.name} you have a balance of: #{player.wallet.amount}"
    bet(player)
  end

  def bet(player)
    puts "How much would you like to bet?
          Or type 'quit' to exit"
    @bet = gets.to_f
    if @bet == 0
      puts "Goodbye!"
    else
    card_1 = @deck.pop
    puts "The first card is #{card_1.suit} #{card_1.rank}"
    puts "Is the next card Higher or lower?
          1) Higher
          2) Lower"
    choice = gets.to_i
    card_2 = @deck.pop
    puts "The next card is #{card_2.suit} #{card_2.rank}"
    card_check1(card_1)
    card_check2(card_2)
    # binding.pry
    case choice
    when 1
      if @card_1best < @card_2best
        puts "You win $#{@bet}"
        player.wallet.update_money(@bet, true)
        bet(player)
      else
        puts "You lost $#{@bet}"
        player.wallet.update_money(@bet, false)
        bet(player)
      end
    when 2
      if @card_1best > @card_2best
        puts "You win $#{@bet}"
        player.wallet.update_money(@bet, true)
        bet(player)
      else
        puts "You lost $#{@bet}"
        player.wallet.update_money(@bet, false)
        bet(player)
      end
    else
      puts "There are only 2 choices"
      bet(player)
    end
  end
end

  def card_check1(card_1)
    if card_1.rank == 'J'
      @card_1best = 11
    elsif card_1.rank == 'Q'
      @card_1best = 12
    elsif card_1.rank == 'K'
      @card_1best = 13
    else
      @card_1best = card_1.rank.to_i
    end
  end

    def card_check2(card_2)
      if card_2.rank == 'J'
        @card_2best = 11
      elsif card_2.rank == 'Q'
        @card_2best = 12
      elsif card_2.rank == 'K'
        @card_2best = 13
      else
        @card_2best = card_2.rank.to_i
      end
    end

end
