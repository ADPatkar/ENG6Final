classdef Deck
    properties
        cards = [];
    end
    methods
        function obj = Deck()
            import pkg.Card
            for i = 1:4
                for j = 2:14
                    x = Cards(i, j, 0);
                    obj.cards = [obj.cards, x];
                end
            end
        end
    end
end