#All gems up here
require 'pry'
require 'colorize'
require 'sounder'

#Pull in other classes you may need
require_relative 'player'
require_relative 'head_tails'
require_relative 'snake_eyes'
require_relative 'high_low'
require_relative 'blackjack'
require_relative 'sound'
require_relative 'random_event'

class Casino
attr_accessor :player

  def initialize
  puts 'Welcome to our Ruby Casino!'
  @player = Player.new
  casino_menu
  end

  def casino_menu
    puts 'What do you want to do?
          1) Casino Games
          2) Bank roll
          3) Quit'
    user_input = gets.to_i

    case user_input
    when 1
      games_menu
    when 2
      WinSound.new
      puts player.wallet.amount
      Random.new(player)
    when 3
      puts "Quit".colorize(:yellow)
      exit
    else
      puts "There are only 3 options"
    end
    games_menu
  end

  def games_menu
    puts 'What game do you want to play?
          1) Head Tails
          2) High Low
          3) Snake Eyes
          4) BlackJack
          5) Bank Roll
          6) Quit'
    user_input = gets.to_i

    case user_input
    when 1
      HeadsTails.new(player)
    when 2
      HighLow.new(player)
    when 3
      SnakeEyes.new(player)
    when 4
      Blackjack.new(player)
    when 5
      WinSound.new
      puts player.wallet.amount
      Random.new(player)
    when 6
      puts "Quit".colorize(:yellow)
      exit
    else
      puts 'There are only 6 options'
    end
    games_menu
  end
end

Casino.new
