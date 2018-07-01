require "./lib/card_class.rb"
require "./lib/guess_class.rb"
require "./lib/deck_class.rb"
require "./lib/round_class.rb"
require "minitest/autorun"
require "minitest/pride"

class RoundClassTest < Minitest::Test

  def test_initiates_a_class
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_instance_of Round,round
  end

  def test_for_returning_deck
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal deck, round.deck
  end

  def test_for_returning_guesses
    skip
    assert_equal
  end

  def test_for_returning_current_card
    skip
    assert_equal
  end

  def test_for_adding_record_guess
    skip
  end

  def test_for_returning_count
    skip
  end

  def test_for_returning_first
    skip
  end

  def test_for_returning_last_guess
    skip
  end

  def test_for_returning_number_correct
  end

  def test_for_returning_percent_correct
  end

end
