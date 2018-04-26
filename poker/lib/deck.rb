require 'byebug'
require_relative 'card'

class Deck

  attr_accessor :deck

  CARDS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]
  SUITS = [:S, :D, :H, :C]

  def initialize

    @deck = create_deck
  end

  def create_deck
    deck_array = []
    SUITS.each do |suit|
      CARDS.each do |value|
        deck_array << Card.new(suit, value)
      end
    end
    deck_array

  end

  def make_deck
  end

end
