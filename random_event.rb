require 'colorize'

require_relative 'player'


class Random
  attr_accessor  :player
  def initialize(player)
    random_array = []

    bathroom = Hash.new
    bathroom[:description] = "You went to the bathroom and lost your wallet: Lost $100".colorize(:red)
    bathroom[:price] = 100.00
    bathroom[:argument] = false

    bump = Hash.new
    bump[:description] = "You bump into Tony Stark. He smiles and gives you cash: Win $50".colorize(:green)
    bump[:price] = 50.00
    bump[:argument] = true

    unicorn = Hash.new
    unicorn[:description] = "You see a unicorn gallop around the slots and gently nuzzle you with cash: Win $20".colorize(:green)
    unicorn[:price] = 20.00
    unicorn[:argument] = true

    gnome = Hash.new
    gnome[:description] = "A Gnome spies your wallet and takes some dollars out: Lost $10".colorize(:red)
    gnome[:price] = 10.00
    gnome[:argument] = false

    cullen = Hash.new
    cullen[:description] = "You see that vampire guy from Twilight and are instantly dazzled by his beauty: Lost $5".colorize(:red)
    cullen[:price] = 5.00
    cullen[:argument] = false

    deadpool = Hash.new
    deadpool[:description] = "Deadpool stole some money to buy a chimichanga : Lost $3".colorize(:red)
    deadpool[:price] = 3.00
    deadpool[:argument] = false

    yoda = Hash.new
    yoda[:description] = "Yoda is chilling by the Black Jack table. He gives you some cash : Win $30".colorize(:green)
    yoda[:price] = 30.00
    yoda[:argument] = true

    random_array << bathroom << bump << unicorn << gnome << cullen << deadpool << yoda

    random_event = random_array.sample
    puts "#{random_event[:description]}"

    player.wallet.update_money(random_event[:price], random_event[:argument])
  end
end
