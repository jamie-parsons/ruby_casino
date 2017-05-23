require_relative "player"
# require_relative "card"
require_relative "deck"

class Blackjack
  attr_accessor :player, :bet
  def initialize(player)
    puts "Welcome to BlackJack!"
    puts "#{player.name} you have a balance of: #{player.wallet.amount}"
    bet(player)
  end

  def bet(player)

    puts "First hand:"
    # Instantiate a new deck
    # d = Deck.new
  # Get all the cards in the deck
    player_card_1 = d.show_card
    player_card_2 = d.show_card
    player_total_1 = player_card_1 + player_card_2
    puts player_total_1
    dealer_card_1 = d.show_card
    dealer_card_2 = d.show_card
    dealer_total_1 = dealer_card_1 + dealer_card_2
    puts dealer_total_1
    puts "How much would you like to bet?"
    @bet = gets.to_i
    if player_total_1 > 21
      puts "You bust!"
      player.wallet.update_money(@bet, true)
    elsif player_total_1 < 21
      puts "Would you like to draw another card?"
      puts "Type y for yes and n for no"
      card_question = gets.strip
      if card_question = "y"
        player_card_1 

      end
      player.
    end
  end
end
