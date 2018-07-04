require "./lib/card_class.rb"
require "./lib/guess_class.rb"
require "pry"

class Deck

attr_accessor :cards

def initialize(array_of_cards)
  @cards = array_of_cards
end

def count
  @cards.count
end

def sort
    #while deck.count > changed
    changed = 0
    @cards.map! do |card, index|
        if card.translated_value < @cards[index + 1].translated_value
        card_holder = card
        @cards[index] = @cards[index + 1]
        @cards[index + 1] = card_holder
        changed += 1
        binding.pry
        end
    end
    return @cards
end

end
