require "./lib/card_class.rb"
require "./lib/guess_class.rb"
require "minitest/autorun"
require "minitest/pride"

class GuessClassTest < Minitest::Test

  def test_initiates_a_class
    card_example = Card.new("Queen","Clubs")
    response = "Queen of Clubs"
    guess_example = Guess.new(response, card_example)
    assert_instance_of Guess, guess_example
  end

  def test_returns_guess_response
    card_example = Card.new("Queen","Clubs")
    response = "Queen of Clubs"
    guess_example = Guess.new(response, card_example)
    assert_equal "Queen of Clubs", guess_example.response
  end

  def test_returns_guess_card
    card_example = Card.new("Queen","Clubs")
    response = "Queen of Clubs"
    guess_example = Guess.new(response, card_example)
    assert_equal card_example, guess_example.card
  end

  def test_method_for_returning_boolean_correct?
    guess_example = Guess.new("10 of Hearts", Card.new("10", "Hearts"))
    assert_equal true, guess_example.correct?
    guess_example = Guess.new("10 of Hearts", Card.new("Queen", "Clubs"))
    assert_equal false, guess_example.correct?
  end

  def test_feedback
    guess_example = Guess.new("10 of Hearts", Card.new("10", "Hearts"))
    assert_equal "Correct!", guess_example.feedback
    guess_example = Guess.new("10 of Hearts", Card.new("Queen", "Clubs"))
    assert_equal "Incorrect.", guess_example.feedback
  end
end
