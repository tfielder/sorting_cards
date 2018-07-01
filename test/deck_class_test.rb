require "./lib/card_class.rb"
require "./lib/guess_class.rb"
require "./lib/deck_class.rb"
require "minitest/autorun"
require "minitest/pride"

class DeckClassTest < Minitest::Test

  def test_initiates_a_class
    skip
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck_example = Deck.new([card_1, card_2, card_3])
    assert_instance_of Deck, deck_example
  end

  def test_returns_cards_array
    
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck_example = Deck.new([card_1, card_2, card_3])
    assert_equal [card_1, card_2, card_3], deck_example.cards
  end

  def test_returns_count_in_deck
    skip
  end

end
