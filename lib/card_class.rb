class Card

attr_accessor :value
attr_accessor :suit

def initialize(value, suit)
  @value = value
  @suit = suit
end

def suit
  @suit
end

def value
  @value
end

end
