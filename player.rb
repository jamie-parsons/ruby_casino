require_relative 'wallet'

class Player
  attr_accessor :name, :age, :wallet

  def initialize
    #need to think about how to implement the wallet
    #(class? attribute?)
    puts "What is your name player?"
    @name = gets.strip
    if @name == ""
      puts "Error, invalid input."
      initialize
    end
    puts "What is your age player?"
    @age = gets.strip
    if @age == ""
      puts "Error, invalid input."
      initialize
    elsif @age.to_i >= 21
      puts 'How much money are you playing with?'
      @wallet = Wallet.new
    else
      puts "You're too young!"
      exit
    end
  end
end
