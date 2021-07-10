require_relative 'card.rb'

class Hand

    def initialize (deck, discard, cards = Array.new)
        @deck = deck
        @discard = discard
        @cards = cards
        @deadwood = Array.new
    end

    private

    attr_reader :deck, :discard, :cards

    def big_gin?
        if cards.length != 11 then (return false) end
    end

    def gin?

    end

    def knock?

    end

end