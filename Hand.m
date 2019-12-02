classdef Hand
    properties
        cards = [];
    end
    methods
        function hand = Hand(deck)
            import pkg.Deck.*
            hand.cards = deck.cards(1:5);
            deck.cards(1:5) = [];
        end
    end
end