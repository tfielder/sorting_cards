require "./lib/card_class.rb"
require "./lib/guess_class.rb"
require "pry"

class Deck

attr_accessor :cards
attr_reader :suit_values

def initialize(array_of_cards)
  @cards = array_of_cards
  @suit_values = {"Clubs" => 1, "Diamonds" => 2, "Hearts" => 3, "Spades" => 4}
  @card_values = {"Jack" => 11, "Queen" => 12, "King" => 13, "Ace" => 14}
end

def count
  @cards.count
end

def convert_value(value)
  if value.to_i == 0
    return @card_values[value]
  else
    return value.to_i
  end
end

def convert_suit(suit)
    return @suit_values[suit]
end

def sort_by_value
  no_change = 1
    while no_change != 0
      no_change = @cards.count - 1
      @cards.each_with_index do |card, index|
        if @cards[index + 1] != nil
          if convert_value(card.value) > convert_value(@cards[index + 1].value)
            card_holder = @cards[index]
            @cards[index] = @cards[index + 1]
            @cards[index + 1] = card_holder
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
        if @cards[index + 1] != nil
          if convert_value(card.value) == convert_value(@cards[index + 1].value)
            if convert_suit(card.suit) > convert_suit(@cards[index + 1].suit)
              card_holder = @cards[index]
              @cards[index] = @cards[index + 1]
              @cards[index + 1] = card_holder
            else
              no_change -= 1
            end
          else
              no_change -= 1
          end
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
