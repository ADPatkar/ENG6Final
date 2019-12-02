classdef Deck
    properties
        cards = [];
    end
    methods
        function obj = Deck()
            import pkg.Card.*
            for i = ["Hearts", "Clubs", "Diamonds", "Spades"]
                for j = [2:10, "J", "Q", "K", "A"]
                    x = Card(i, j, 0);
                    obj.cards = [obj.cards, x];
                end
            end
        end
    end
end
