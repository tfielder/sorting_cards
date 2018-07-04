require "./lib/card_class.rb"
require "./lib/guess_class.rb"
require "./lib/deck_class.rb"
require "./lib/round_class.rb"
require "minitest/autorun"
require "minitest/pride"
require "pry"

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
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal [], round.guesses
  end

  def test_for_returning_current_card
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal card_1, round.current_card
  end

  def test_for_adding_record_guess
    #want to throw in a hash and get back a recorded guess
    card_1 = Card.new("10","Diamonds")
    guess = Guess.new("10 of Diamonds", card_1)
    deck = Deck.new([card_1])
    round = Round.new(deck)
    hash = {"value" => guess.card.value, "suit" => guess.card.suit}
    round.record_guess(hash)
    assert_equal "10 of Diamonds",round.guesses[0].response
  end

  def test_for_returning_count

    card_1 = Card.new("10","Diamonds")
    guess = Guess.new("10 of Diamonds", card_1)
    deck = Deck.new([card_1])
    round = Round.new(deck)
    hash = {"value" => guess.card.value, "suit" => guess.card.suit}
    round.record_guess(hash)
    assert_equal 1, round.deck.count
    assert_equal 1, round.guesses.count
  end

  def test_for_returning_first
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    guess = Guess.new("10 of Diamonds", card_1)
    round = Round.new(deck)
    hash = {"value" => guess.card.value, "suit" => guess.card.suit}
    round.record_guess(hash)
    assert_equal "3 of Hearts", round.guesses[0].response
  end

  def test_for_returning_last_guess
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    guess = Guess.new("10 of Diamonds", card_1)
    guess2 = Guess.new("2 of Clubs", card_1)
    round = Round.new(deck)
    hash = {"value" => guess.card.value, "suit" => guess.card.suit}
    round.record_guess(hash)
    hash2 = {"value" => guess2.card.value, "suit" => guess2.card.suit}
    round.record_guess(hash2)
    assert_equal "10 of Diamonds", round.guesses[-1].response
  end

  def test_for_returning_number_correct
    skip
  end

  def test_for_returning_percent_correct
    skip
  end

end
