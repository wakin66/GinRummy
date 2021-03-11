class Card

    attr_reader :name, :suit, :value, :points

    def initialize(suit,value)
        @name = "#{suit}#{value}"
        @suit = suit
        @value = value
        @points = get_points
    end

    private

    def get_points
        case value
        when "A"
            return 1
        when "J"
            return 10
        when "Q"
            return 10
        when "K"
            return 10
        else
            return value.to_i
        end
    end

end