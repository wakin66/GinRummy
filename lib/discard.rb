class Discard

    def initialize
        @cards = Array.new
    end

    def add_card(card)
        cards << card
    end

    def draw_card
        return cards.pop
    end

    def display
        return cards.last.symbol
    end

    private

    attr_reader :cards

end