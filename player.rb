require_relative 'wallet'

class Player
  attr_accessor :name, :age, :gender, :wallet

  def initialize
    #need to think about how to implement the wallet
    #(class? attribute?)
    puts "What is your name player?"
    @name = gets.strip
    puts "What is your age player?"
    @age = gets.strip.to_i
    puts "What is your gender?"
    @gender = gets.strip
    puts 'How much money are you playing with?'
    @wallet = Wallet.new(gets.to_f)
  end
end
