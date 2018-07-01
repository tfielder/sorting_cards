require "./lib/card_class.rb"
require "./lib/guess_class.rb"
require "./lib/deck_class.rb"

class Round

  attr_accessor :deck
  attr_accessor :guesses
  attr_accessor :guess_count
  attr_accessor :current_card
  attr_accessor :number_correct

  def initialize(deck)
    @deck = deck
    @guesses = []
    @guess_count = 0
    @current_card = 1
    @number_correct = 0
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
    #this may not be doing what it is supposed to.  Is the guess . . .
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
    @number_correct
  end

  def percent_correct
    (@number_correct / @guess_count) * 100
  end

end
