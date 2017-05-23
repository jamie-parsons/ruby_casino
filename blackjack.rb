require_relative "player"
# require_relative "card"
require_relative "deck"

class Blackjack
  attr_accessor :player, :bet #playerhand dealerhand push results arrays
  def initialize(player)
    puts "Welcome to BlackJack!"
    puts "#{player.name} you have a balance of: #{player.wallet.amount}"
    bet(player)
  end

  def bet(player)

    puts "First hand:"
    # Instantiate a new deck
    d = Deck.new
  # Get all the cards in the deck
    player_card_1 = card_check(d.show_card.rank)
    player_card_2 = card_check(d.show_card.rank)
    @player_total_1 = player_card_1 + player_card_2
    puts "Your hand total #{@player_total_1}"
    dealer_card_1 = card_check(d.show_card.rank)
    dealer_card_2 = card_check(d.show_card.rank)
    @dealer_total_1 = dealer_card_1 + dealer_card_2
    puts "Your dealer's hand is #{@dealer_total_1}"
    puts "How much would you like to bet?"
    @bet = gets.to_i
    draw
  end

  def draw
    d = Deck.new
    puts "Would you like another card? Y for yes, N for No?"
    card_question = gets.strip
    if card_question == "Y"
      player_card_3 = card_check(d.show_card.rank)
      @player_total_new = @player_total_1 + player_card_3
      puts "Your hand total #{player_total_new}"
      dealer_card_3 = card_check(d.show_card.rank)
      @dealer_total_new = @dealer_total_1 + dealer_card_3
      puts "The dealer's hand is #{dealer_total_new}"
      win_lose
    elsif card_question == "N"
      #compare hands
    else
      puts "Error, please make a valid entry!"
      draw
    end
  end

  def win_lose(player)
    if @player_total_new > 21 || @dealer_total_new > 21
      puts "Bust!"
      player.wallet.update_money(@bet, )
    # elsif player_total_1 < 21
      # puts "Would you like to draw another card?"
      # puts "Type y for yes and n for no"
      # card_question = gets.strip
      # if card_question == "y"
      #   player_card_1
      end
    end


  def card_check(card)
    if card == "J" || card == "Q" || card == "K"
      10
    elsif card == 'A'
      puts "Choose 1 or 11"
      ace_input = gets.strip.to_i
      if ace_input == 1
         1
      else ace_input == 11
         11
      end
      card.to_i
    else
      card.to_i
    end
  end

end
