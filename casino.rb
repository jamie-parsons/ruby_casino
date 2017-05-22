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
    #Casino option
    #bank roll
    #player status
    #quit
    HeadsTails.new(player)
  end
end

Casino.new
