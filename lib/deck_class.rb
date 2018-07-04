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

def sort_by_value
  no_change = 1
    while no_change != 0
      no_change = @cards.count - 1
      @cards.each_with_index do |card, index|
        if @cards[index + 1] != nil
          if card.translated_value > @cards[index + 1].translated_value
            card_holder1 = @cards[index]
            card_holder2 = @cards[index + 1]
            @cards[index] = card_holder2
            @cards[index + 1] = card_holder1
          else
            no_change -= 1
          end
        end
      end
    end
    return @cards
end

def sort_by_suit
  no_change = 1
    while no_change != 0
      no_change = @cards.count - 1
      @cards.each_with_index do |card, index|
          #binding.pry
        if @cards[index + 1] != nil
          if card.translated_value == @cards[index + 1].translated_value
            #binding.pry
            if card.translated_suit > @cards[index + 1].translated_suit
              card_holder1 = @cards[index]
              card_holder2 = @cards[index + 1]
              @cards[index] = card_holder2
              @cards[index + 1] = card_holder1
            else
              no_change -= 1
            end
          else
              no_change -= 1
          end
        else
          #this round is complete
        end
      end
    end
    return @cards
end

def sort
  sort_by_value
  sort_by_suit
  return @cards
end

end
