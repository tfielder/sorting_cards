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

  def test_returns_response
    card_example = Card.new("Queen","Clubs")
    response = "Queen of Clubs"
    guess_example = Guess.new(response, card_example)
    assert_equal "Queen of Clubs", guess_example.response
  end

  def test_correct?
    card_example = Card.new("Queen","Clubs")
    response = "Queen of Clubs"
    guess_example = Guess.new(response, card_example)
    assert_equal true, guess_example.correct?

    card_example = Card.new("Queen","you")
    response = "Queen of Clubs"
    guess_example = Guess.new(response, card_example)
    assert_equal false, guess_example.correct?
  end

  def test_feedback
    card_example = Card.new("Queen","Clubs")
    response = "Queen of Clubs"
    guess_example = Guess.new(response, card_example)
    assert_equal "Correct!", guess_example.feedback

    card_example = Card.new("Queen","you")
    response = "Queen of Clubs"
    guess_example = Guess.new(response, card_example)
    assert_equal "Incorrect!", guess_example.feedback
  end

end
