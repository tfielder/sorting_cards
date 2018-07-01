require "./lib/card_class.rb"
require "./lib/guess_class.rb"
require "./lib/deck_class.rb"

class Round

  attr_accessor :deck
  attr_accessor :guesses
  attr_accessor :guess_count

  def initialize(deck)
    @deck = deck
    @guesses = []
    @guess_count = 0
  end

  def deck
    @deck
  end

  def guesses
    @guesses
  end

  def current_card
    #? What should this do?
  end

  def record_guess(guess)
    @guesses.unshift(guess)
    @guess_count += 1
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
