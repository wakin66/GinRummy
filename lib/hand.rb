require_relative 'card.rb'

class Hand

    def initialize (deck, discard)
        @deck = deck
        @discard = discard
    end

    private

    attr_reader :deck, :discard

    def big_gin?

    end

end