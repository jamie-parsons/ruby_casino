#All gems up here
require 'pry'
require 'colorize'

#Pull in other classes you may need
require_relative 'player'

class Casino
attr_accessor :player

  def initialize
  puts 'Welcome to our Ruby Casino!'
  @player = Player.new
  binding.pry
  end
end

Casino.new
