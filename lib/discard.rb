class Discard

    def initialzie
        @cards = Array.new
    end

    def add_card(card)
        cards << card
    end

    def draw_card
        return cards.pop
    end

    def display
        cards.last.value
    end

    private

    attr_reader :cards

end