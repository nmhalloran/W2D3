class Player
  attr_reader :name, :cards
  attr_accessor :bankroll

  def initialize(name)
    @name = name
    @bankroll = 1000
    @cards = []
  end

  def discard
  end

  def respond_to_bet
  end


end
