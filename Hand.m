classdef Hand
    properties
        cards = [];
    end
    methods
        function obj = Hand(deck)
            import pkg.Deck.*
            obj.cards = deck.cards(1:5);
            deck.cards(1:5) = [];
        end
    end
end
