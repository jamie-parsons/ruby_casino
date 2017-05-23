require 'sounder'
require 'pry'

class WinSound
  def initialize
    Sounder::System.set_volume 70
    # Sounder.play File.expand_path('./cha_ching_1.wav', __FILE__)
    #sound = File.expand_path('Documents/DevPoint/week2/ruby_casino/cha_ching_1.wav')
    sound = Sounder::Sound.new "./cha_ching_1.wav"
    # sound = Sounder::Sound.new ('Documents/DevPoint/week2/ruby_casino/cha_ching_1.wav', cha_ching_1.wav)
    sound.play
  end
end
