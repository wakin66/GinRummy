require_relative 'card.rb'

class Deck

    def initialize
        @cards = Array.new
        fill_deck
        shuffle
    end

    def draw_card
        return cards.pop
    end

    def shuffle
        @cards.shuffle!
    end

    private

    attr_reader :cards

    def fill_deck
        ["♤","♢","♧","♡"].each do |suit|
            ["A","2","3","4","5","6","7","8","9","10","J","Q","K"].each do |value|
                cards << Card.new(suit,value)
            end
        end
    end

end