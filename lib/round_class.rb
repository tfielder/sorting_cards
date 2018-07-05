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
    @current_card = 0
    @number_correct = 0
  end

  def current_card
    @deck.cards[@current_card]
  end

  def record_guess(guess = {})
    guess_count = @guesses.count
    created_guess = Guess.new("#{guess[:value]} of #{guess[:suit]}", deck.cards[guess_count])
    @current_card += 1
    @guesses.unshift(created_guess)
    binding.pry
  end

  def first
    @guesses.index[-1]
  end

  def last
    @guesses.index[0]
  end

  def number_correct
    @number_correct
  end

  def percent_correct
    (@number_correct / @guesses.count) * 100
  end

end
