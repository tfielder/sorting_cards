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
  @cards.count
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

  @cards.map! do |card|
    translated_value = card_values[card.value]
    translated_suit = suit_values[card.suit]
    card = [translated_value, translated_suit]
  end
  return @cards

end

def change_deck_to_face_values
  #undoes the change_deck_to_numerical_values
end

def iterate_by_value
  @cards.map! do |card, suit|
    
      binding.pry

    #if card[1] < (@cards[index + 1][1])
      #puts card.value " is the card value"
      # puts "and the indexed value is @cards[index + 1].value"
      # card_holder = @cards[index]
      # @cards[index] = @cards[index + 1]
      # @cards[index + 1] = card_holder
      # @changed = true
      end
  return @cards
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

    #changed = false
    #until changed == false

      #compare value of card before to card
        #insert if value is less than value at index.

      #return index of card unless nil
      #if changed == true
    #end
    #sort the deck by suit
    #return the deck in an array
end

end
