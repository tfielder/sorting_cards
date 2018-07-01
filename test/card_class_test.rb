require "./lib/card_class.rb"
require "minitest/autorun"
require "minitest/pride"

class CardClassTest < Minitest::Test

  def test_initiates_a_class
    card_example = Card.new("","")
    assert_instance_of Card, card_example
  end

  def test_class_gives_suit
    card_example = Card.new("5","hearts")
    suit = card_example.suit
    assert_equal "hearts", suit
  end

  def test_class_gives_value
    card_example = Card.new("5","hearts")
    value = card_example.value
    assert_equal "5", value
  end

end
