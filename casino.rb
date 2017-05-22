#All gems up here
require 'pry'
require 'colorize'

#Pull in other classes you may need
require_relative 'player'
require_relative 'head_tails'

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
      puts "bank roll"
    when 3
      puts "Quit"
      Quit
    else
      puts "There are only 3 options"
    end
  end

  def games_menu
    puts 'What game do you want to play?
          1) Head Tails
          2) High Low
          3) Another easy game
          4) Quit'
    user_input = gets.to_i

    case user_input
    when 1
      HeadsTails.new(player)
    when 2
      puts 'High low'
    when 3
      puts 'Another easy game'
    when 4
      puts 'quit'
    else
      puts 'There are only 4 options'
    end
  end
end

Casino.new
