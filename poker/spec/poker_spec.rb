require 'deck'
require 'card'

describe Card do

  describe '#initialize' do
    subject(:card) { Card.new("S", 12) }

    it 'initializes with a suit' do
      expect(card.value).to eq(12)
    end

    it 'initializes with a value' do
      expect(card.suit).to eq("S")
    end

  end
end

describe Deck do
  subject(:deck) { Deck.new }

  describe '#initialize' do
    it 'Initializes with an empty deck' do
      expect(deck.deck).to be_empty
    end


  end


  describe '#create_deck' do
    {name = Deck.new}
    it 'expects deck to receive create deck' do
      expect(name).to receive(:create_deck)
    end

    before(:each) {deck.create_deck}


    it 'creates a 52 card deck' do

      expect(deck.deck.length).to eq(52)
    end

    it 'takes in card objects' do

      expect(deck.deck[21]).to be_instance_of(Card)
    end

    it 'creates no duplicate cards' do
      expect(deck.deck).to eq(deck.deck.uniq)
    end

  end

end
