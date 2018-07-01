require "./lib/card_class.rb"
require "./lib/guess_class.rb"
require "./lib/deck_class.rb"

class Round

  attr_accessor :deck
  attr_accessor :guesses
  attr_accessor :guess_count
  attr_accessor :current_card

  def initialize(deck)
    @deck = deck
    @guesses = []
    @guess_count = 0
    @current_card = 1
  end

  def deck
    @deck
  end

  def guesses
    @guesses
  end

  def current_card
    #? What should this do?
    @deck.index[current_card]  #check functionality
  end

  def record_guess(guess)
    @guesses.unshift(guess)
    @guess_count += 1
    @current_card += 1
  end

  def first
    @guesses.index[0]
  end

  def last
    @guesses.index[-1]
  end

  def number_correct
    #should tell you how many you got right?
  end

  def percent_correct
    #something / @guess_count
  end

end
