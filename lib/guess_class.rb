require "./lib/card_class.rb"

class Guess
  attr_accessor :response, :card

  def initialize(response, card)
    @response = response
    @card = card
  end

  def card_description
    card_description = "#{@card.value} of #{@card.suit}"
    return card_description
  end

  def correct?
    card_description == @response
  end

  def feedback
    if correct?
      "Correct!"
    else
      "Incorrect!"
    end
  end
end
