require "./lib/card_class.rb"

class Guess
  def initialize(response, card)
    @response = response
    @card = card
  end

  def response
    @response
  end

  def correct?
    card_description = "#{@card.value} of #{@card.suit}"
    if card_description == @response
      return true
    else
      return false
    end
  end

  def feedback
    if correct?
      "Correct!"
    else
      "Incorrect!"
    end
  end
end
