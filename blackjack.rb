require_relative "player"
# require_relative "card"
require_relative "deck"

class Blackjack
  attr_accessor :player, :bet, :wallet, :d #playerhand dealerhand push results arrays
  def initialize(player)
    puts "Welcome to BlackJack!"
    puts "#{player.name} you have a balance of: #{player.wallet.amount}"
    bet(player)
  end

  def bet(player)

    puts "First hand:"
    # Instantiate a new deck
    @d = Deck.new
  # Get all the cards in the deck
    player_card_1 = card_check(@d.show_card.rank)
    player_card_2 = card_check(@d.show_card.rank)
    @player_total_new = player_card_1 + player_card_2
    puts "Your hand total #{@player_total_new}"
    dealer_card_1 = card_check(@d.show_card.rank, true)
    dealer_card_2 = card_check(@d.show_card.rank, true)
    @dealer_total_new = dealer_card_1 + dealer_card_2
    puts "The dealer's hand total is #{@dealer_total_new}"
    puts "How much would you like to bet?"
    @bet = gets.to_i
    draw(player)
  end

  def draw(player)

    puts "Would you like to hit? Y for yes, N for No."
    card_question = gets.strip.upcase
    if card_question == "Y"
      player_card_3 = card_check(@d.show_card.rank)
      @player_total_new += player_card_3
      puts "Your hand total #{@player_total_new}"
      dealer_draw_stay(player)
      bust_draw(player)
    elsif card_question == "N" #compare hands
      @player_total_new
      puts "You stay with #{@player_total_new}"
      dealer_draw_stay(player)
      bust_draw(player)
    else
      puts "Error, please make a valid entry!"
      draw(player)
    end
  end

  def dealer_draw_stay(player)
    if @dealer_total_new < 18
        dealer_card_3 = card_check(@d.show_card.rank, true)
        @dealer_total_new += dealer_card_3
        puts "The dealer's hand is #{@dealer_total_new}"
    else @dealer_total_new > 18
        puts "Dealer stays at #{@dealer_total_new}"
    end
  end

  def bust_draw(player)
    if @player_total_new > 21
      puts "You bust! Dealer Wins"
      player.wallet.update_money(@bet, false)
    elsif @dealer_total_new > 21
      puts "Dealer busts! You Win!"
      player.wallet.update_money(@bet, true)
    elsif @dealer_total_new == 21
      puts "Dealer Wins!"
      player.wallet.update_money(@bet, false)
    elsif @player_total_new > @dealer_total_new
      puts "You Win!"
      player.wallet.update_money(@bet, true)
    elsif @player_total_new == 21
      puts "You Win!"
      player.wallet.update_money(@bet, true)
      BlackJack.new(player)
      end
    end

  def card_check(card, isDealer = false)
    if card == "J" || card == "Q" || card == "K"
      10
    elsif card == 'A'
      if !isDealer
        puts "Choose 1 or 11"
        ace_input = gets.strip.to_i
        if ace_input == 1
          card = 1
        elsif ace_input == 11
          card = 11
        else
          puts "Error, please try again!"
          card_check
        end
      else
        card = 11
      end
      card.to_i
    else
      card.to_i
    end
  end

end
