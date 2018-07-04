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
