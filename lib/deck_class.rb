require "./lib/card_class.rb"
require "./lib/guess_class.rb"
require "pry"

class Deck

attr_accessor :cards

def initialize(array_of_cards)
  @cards = array_of_cards
end

def cards
  @cards
end

def count
  number_of_cards = @cards.count
end

def change_deck_to_numerical_values
  #mutates the deck of cards to numerical values
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

    suit_values = {
    "Clubs" => 1,
    "Diamonds" => 2,
    "Hearts" => 3,
    "Spades" => 4
  }

  @cards.map do |card|
    #binding.pry
    value = card_values[(card.value)]
    suit = suit_values[(card.suit)]
    #binding.pry
    #puts "Your card #{value} and #{suit}"
    card = [value, suit]
    #binding.pry
  end

  return @cards

end

def change_deck_to_face_values
  #undoes the change_deck_to_numerical_values
end

def sort
    #define values
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

      suit_values = {
      "Clubs" => 1,
      "Diamonds" => 2,
      "Hearts" => 3,
      "Spades" => 4
    }

    sorted_array = []
    #sort the deck by value for each card

    @cards.each each do |card|
      #compare value of card before to card
        #insert if value is less than value at index.



      #return index of card unless nil
    end
    #sort the deck by suit
    #return the deck in an array
end

end
