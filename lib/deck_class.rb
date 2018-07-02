require "./lib/card_class.rb"
require "./lib/guess_class.rb"

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

def sort
    #take the deck
    @cards
    #define values
    royalty = {"Jack" = "11", "Queen" = "12", "King" = "13", "Ace" = "14"}
    #sort the deck by value
    @cards.map each do |card|
      #compare value of card before to card
      #return index of card unless nil
    end
    #sort the deck by suit
    #return the deck in an array
end

end
