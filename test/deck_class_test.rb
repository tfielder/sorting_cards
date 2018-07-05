require "./lib/card_class.rb"
require "./lib/guess_class.rb"
require "./lib/deck_class.rb"
require "minitest/autorun"
require "minitest/pride"
require "pry"

class DeckClassTest < Minitest::Test

  def test_initiates_a_class
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
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck_example = Deck.new([card_1, card_2, card_3])
    assert_equal 3, deck_example.count
  end

  def test_convert_value
    card_1 = Card.new("4","Hearts")
    card_2 = Card.new("Jack", "Clubs")
    deck_example = Deck.new([card_1, card_2])
    assert_equal 4, deck_example.convert_value(card_1.value)
    assert_equal 11, deck_example.convert_value(card_2.value)
  end

  def test_convert_suit
    card_1 = Card.new("4","Hearts")
    card_2 = Card.new("Jack", "Clubs")
    deck_example = Deck.new([card_1, card_2])
    assert_equal 3, deck_example.convert_suit(card_1.suit)
    assert_equal 1, deck_example.convert_suit(card_2.suit)
  end

  def test_sort_by_value
    card_1 = Card.new("4","Hearts")
    card_2 = Card.new("Jack", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    card_4 = Card.new("Ace", "Spades")
    card_5 = Card.new("Ace", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3, card_4, card_5])
    sorted = deck.sort_by_value
    assert_equal card_1.value, sorted[0].value
    assert_equal card_3.value, sorted[1].value
    assert_equal card_2.value, sorted[2].value
    assert_equal card_4.value, sorted[3].value
    assert_equal card_5.value, sorted[4].value
  end

  def test_sorts_by_suit
    #Clubs, Diamonds, Hearts, Spades.
    card_1 = Card.new("4","Hearts")
    card_2 = Card.new("Jack", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    card_4 = Card.new("Ace", "Spades")
    card_5 = Card.new("Ace", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3, card_4, card_5])
    sorted = deck.sort_by_suit
    assert_equal card_1.suit, sorted[0].suit
    assert_equal card_2.suit, sorted[1].suit
    assert_equal card_3.suit, sorted[2].suit
    assert_equal card_5.suit, sorted[3].suit
    assert_equal card_4.suit, sorted[4].suit
  end

  def test_sorts_deck_by_suit_and_value
    card_1 = Card.new("4","Hearts")
    card_2 = Card.new("Jack", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    card_4 = Card.new("Ace", "Spades")
    card_5 = Card.new("Ace", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3, card_4, card_5])
    deck.sort
    assert_equal card_1.value, deck.cards[0].value
    assert_equal card_3.value, deck.cards[1].value
    assert_equal card_2.value, deck.cards[2].value
    assert_equal card_5.value, deck.cards[3].value
    assert_equal card_4.value, deck.cards[4].value

    assert_equal card_1.suit, deck.cards[0].suit
    assert_equal card_3.suit, deck.cards[1].suit
    assert_equal card_2.suit, deck.cards[2].suit
    assert_equal card_5.suit, deck.cards[3].suit
    assert_equal card_4.suit, deck.cards[4].suit
  end

end
