require_relative 'card.rb'

class Player
    attr_reader

    def initialize
        @hand = Hand.new
    end
end