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

end
