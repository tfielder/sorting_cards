require "./lib/card_class.rb"
require "./lib/guess_class.rb"
require "./lib/deck_class.rb"

class Round

  attr_accessor :deck

  def initialize(deck)
    @deck = deck
  end

  def deck
    @deck
  end

end
