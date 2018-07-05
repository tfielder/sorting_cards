require "./lib/card_class.rb"
require "./lib/guess_class.rb"
require "./lib/deck_class.rb"


class Round

  attr_accessor :deck
  attr_accessor :guesses
  attr_accessor :guess_count
  attr_accessor :current_card
  attr_accessor :correct_guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
    @current_card = 0
    @correct_guesses = 0
  end

  def current_card
    @deck.cards[@current_card]
  end

  def record_guess(guess = {})
    guess_count = @guesses.count
    created_guess = Guess.new("#{guess[:value]} of #{guess[:suit]}", deck.cards[guess_count])
    @current_card += 1
    @guesses.push(created_guess)
  end

  def number_correct
    @correct_guesses = 0
    @guesses.each do |guess|
      if guess.correct? == true
        @correct_guesses += 1
      end
    end
    return @correct_guesses
  end

  def percent_correct
    percentage = (number_correct.to_f / @guesses.count.to_f) * 100
    return percentage.to_i
  end

end
