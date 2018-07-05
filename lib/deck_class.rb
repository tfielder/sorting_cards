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

def switch_cards(index)
  card_holder = @cards[index]
  @cards[index] = @cards[index + 1]
  @cards[index + 1] = card_holder
end

def check_value_equal(index, card)
  convert_value(card.value) == convert_value(@cards[index + 1].value)
end

def check_suit_greater(index, card)
  convert_suit(card.suit) > convert_suit(@cards[index + 1].suit)
end

def card_comparison(card, index)
  if convert_value(card.value) > convert_value(@cards[index + 1].value)
      switch_cards(index)
      return 0
  elsif check_value_equal(index, card) && check_suit_greater(index, card)
      switch_cards(index)
      return 0
  else
      return -1
  end
end

def sort
  no_change = 1
    while no_change != 0
      no_change = @cards.count - 1
      @cards.each_with_index do |card, index|
        if @cards[index + 1] != nil
          no_change += card_comparison(card, index)
        end
      end
    end
    return @cards
end

end
