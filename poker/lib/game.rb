require_relative 'deck'
require_relative 'player'
require_relative 'hand'

class PokerGame
  def initialize(player1, player2)
    @deck = Deck.new
    @player1 = Player.new("Nick")
    @player2 = Player.new("Marshall")
    @current_player = @player1
    @pot = 0
  end

  def shuffle_deck
    @deck.shuffle!
  end

  def play_round
    shuffle_deck
    deal_cards
    @current_player.get_response
    switch_player
  end

  def self.start_game
    game = PokerGame.new
    until over?
      play_round
    end
  end

  def deal_cards

  end

  def switch_player
    @current_player = @current_player == @player1 ? @player2 : @player1
  end

end
