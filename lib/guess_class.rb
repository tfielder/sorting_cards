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
      if card_description == @response
        return true
      else
        return false
      end
  end

  def feedback
    if correct? == true
      return "Correct!"
    else
      return "Incorrect."
    end
  end
end
