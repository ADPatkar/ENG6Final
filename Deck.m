classdef Deck
    properties
        cards = [];
    end
    methods
        function deck = Deck()
            import pkg.Card.*
            for i = ["Hearts", "Clubs", "Diamonds", "Spades"]
                for j = [2:10, "J", "Q", "K", "A"]
                    x = Card(i, j, 0);
                    deck.cards = [deck.cards, x];
                end
            end
        end
    end
end
