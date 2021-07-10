require_relative 'card.rb'

class Hand

    def initialize (deck, discard, cards = Array.new)
        @deck = deck
        @discard = discard
        @cards = cards
        @deadwood = Array.new
    end

    def add_card(card)
        @cards << card
    end

    def remove_card(idx)
        @cards.delete_at(idx)
    end

    private

    attr_reader :deck, :discard, :cards, :deadwood

    def big_gin?
        (return false) if cards.length != 11
        deadwood.length == 0 ? (return true) : (return false)
    end

    def gin?
        (return false) if !cards.include?[10,11]
        deadwood.length == 1 ? (return true) : (return false)
    end

    def knock?
        (return false) if cards.length != 11
        potential_deadwood_value <= 10 ? (return potential_deadwood_value) : (return false)
    end

    def potential_deadwood_value
        return deadwood_value - deadwood_max.points
    end

    def deadwood_value
        value = 0
        deadwood.each {|card| value += card.points}
        return value
    end

    def deadwood_max
        max_card = cards.first
        deadwood.each {|card| max_card = card if max_card.points < card.points}
        return max_card
    end

end