require "pry"

class Card
  attr_accessor :value
  attr_accessor :suit
  attr_accessor :translated_suit
  attr_accessor :translated_value

  def initialize(value, suit)
    @value = value
    @suit = suit
    translate_suit
    translate_value
  end

  def translate_suit
    suit_values = {
    "Clubs" => 1,
    "Diamonds" => 2,
    "Hearts" => 3,
    "Spades" => 4
    }
  @translated_suit = suit_values[@suit]
  end

  def translate_value
    card_values = {
      "2" => 2,
      "3" => 3,
      "4" => 4,
      "5" => 5,
      "6" => 6,
      "7" => 7,
      "8" => 8,
      "9" => 9,
      "10" => 10,
      "Jack" => 11,
      "Queen" => 12,
      "King" => 13,
      "Ace" => 14
      }
    @translated_value = card_values[@value]
  end

end
